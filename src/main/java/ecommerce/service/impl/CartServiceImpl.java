package ecommerce.service.impl;

import ecommerce.entity.Cart;
import ecommerce.entity.CartItem;
import ecommerce.model.AbandonedCartDto;
import ecommerce.model.CartLineDto;
import ecommerce.repository.CartItemRepository;
import ecommerce.repository.CartRepository;
import ecommerce.repository.ProductRepository;
import ecommerce.service.CartService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class CartServiceImpl implements CartService
{
    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;
    private final ProductRepository productRepository;

    @Transactional
    protected Cart getOrCreateActiveCart(String sessionId)
    {
        return cartRepository.findFirstBySessionIdAndDeletedDateIsNullOrderByCreatedDateDesc(sessionId)
                .orElseGet(() ->
                {
                    Cart cart = new Cart();
                    cart.setSessionId(sessionId);
                    cart.setUpdatedDate(Instant.now());
                    return cartRepository.save(cart);
                });
    }

    @Override
    @Transactional
    public void addItem(String sessionId, UUID productId, int quantity)
    {
        int qty = quantity <= 0 ? 1 : quantity;
        Cart cart = getOrCreateActiveCart(sessionId);

        var product = productRepository.findById(productId)
                .orElseThrow(() -> new IllegalArgumentException("Product not found: " + productId));

        CartItem item = cartItemRepository.findFirstByCartIdAndProductIdAndDeletedAtIsNull(cart.getId(), productId)
                .orElseGet(() ->
                {
                    CartItem ci = new CartItem();
                    ci.setCart(cart);
                    ci.setProduct(product);
                    ci.setQuantity(0);
                    return ci;
                });

        item.setQuantity(item.getQuantity() + qty);
        item.setUpdatedAt(Instant.now());
        cartItemRepository.save(item);

        cart.setUpdatedDate(Instant.now());
        cartRepository.save(cart);
    }

    @Override
    @Transactional
    public void updateItem(String sessionId, UUID productId, int quantity)
    {
        Cart cart = getOrCreateActiveCart(sessionId);
        var existingOpt = cartItemRepository.findFirstByCartIdAndProductIdAndDeletedAtIsNull(cart.getId(), productId);
        if (existingOpt.isEmpty())
        {
            return;
        }

        CartItem item = existingOpt.get();
        if (quantity <= 0)
        {
            item.setDeletedAt(Instant.now());
        }
        else
        {
            item.setQuantity(quantity);
            item.setUpdatedAt(Instant.now());
        }
        cartItemRepository.save(item);

        cart.setUpdatedDate(Instant.now());
        cartRepository.save(cart);
    }

    @Override
    @Transactional
    public void removeItem(String sessionId, UUID productId)
    {
        Cart cart = getOrCreateActiveCart(sessionId);
        cartItemRepository.findFirstByCartIdAndProductIdAndDeletedAtIsNull(cart.getId(), productId)
                .ifPresent(item ->
                {
                    item.setDeletedAt(Instant.now());
                    cartItemRepository.save(item);
                });

        cart.setUpdatedDate(Instant.now());
        cartRepository.save(cart);
    }

    @Override
    @Transactional
    public void clear(String sessionId)
    {
        Cart cart = getOrCreateActiveCart(sessionId);
        List<CartItem> items = cartItemRepository.findByCartIdAndDeletedAtIsNull(cart.getId());
        Instant now = Instant.now();
        for (CartItem item : items)
        {
            item.setDeletedAt(now);
        }
        cartItemRepository.saveAll(items);

        cart.setUpdatedDate(now);
        cartRepository.save(cart);
    }

    @Override
    @Transactional(readOnly = true)
    public List<CartLineDto> getLines(String sessionId)
    {
        var cartOpt = cartRepository.findFirstBySessionIdAndDeletedDateIsNullOrderByCreatedDateDesc(sessionId);
        if (cartOpt.isEmpty())
        {
            return List.of();
        }
        var cart = cartOpt.get();

        return cartItemRepository.findActiveItemsByCartId(cart.getId()).stream()
                .map(ci ->
                {
                    var p = ci.getProduct();
                    double price = p.getPrice() == null ? 0.0 : p.getPrice();
                    int qty = ci.getQuantity() == null ? 0 : ci.getQuantity();
                    return new CartLineDto(p, qty, price * qty);
                })
                .toList();
    }

    @Override
    @Transactional(readOnly = true)
    public double getSubtotal(String sessionId)
    {
        return getLines(sessionId).stream().mapToDouble(CartLineDto::subtotal).sum();
    }

    @Override
    @Transactional(readOnly = true)
    public int getItemCount(String sessionId)
    {
        return getLines(sessionId).stream().mapToInt(CartLineDto::quantity).sum();
    }

    @Override
    @Transactional(readOnly = true)
    public List<AbandonedCartDto> searchAbandonedCarts(int minAgeMinutes, int limit)
    {
        int safeLimit = Math.max(1, Math.min(limit, 500));
        int safeAge = Math.max(1, minAgeMinutes);
        Instant cutoff = Instant.now().minus(safeAge, ChronoUnit.MINUTES);

        List<Cart> carts = cartRepository.findAbandonedSince(cutoff);
        if (carts.isEmpty())
        {
            return List.of();
        }

        if (carts.size() > safeLimit)
        {
            carts = carts.subList(0, safeLimit);
        }

        List<UUID> cartIds = carts.stream().map(Cart::getId).toList();
        List<CartItem> items = cartItemRepository.findActiveItemsByCartIds(cartIds);

        Map<UUID, List<CartItem>> itemsByCart = items.stream().collect(Collectors.groupingBy(ci -> ci.getCart().getId()));

        List<AbandonedCartDto> result = new ArrayList<>(carts.size());
        for (Cart c : carts)
        {
            List<CartItem> cartItems = itemsByCart.getOrDefault(c.getId(), List.of());
            int itemCount = cartItems.stream().mapToInt(ci -> ci.getQuantity() == null ? 0 : ci.getQuantity()).sum();
            double subtotal = cartItems.stream().mapToDouble(ci ->
            {
                double price = ci.getProduct().getPrice() == null ? 0.0 : ci.getProduct().getPrice();
                int qty = ci.getQuantity() == null ? 0 : ci.getQuantity();
                return price * qty;
            }).sum();

            Instant lastUpdated = c.getUpdatedDate() != null ? c.getUpdatedDate() : c.getCreatedDate();
            result.add(new AbandonedCartDto(c.getId(), c.getSessionId(), lastUpdated, itemCount, subtotal));
        }

        return result;
    }
}

