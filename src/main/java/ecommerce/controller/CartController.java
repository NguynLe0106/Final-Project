package ecommerce.controller;
import ecommerce.entity.Product;
import ecommerce.repository.ProductRepository;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.stream.Collectors;

@Log4j2
@AllArgsConstructor
@Controller
@SessionAttributes("cart")
@RequestMapping("/cart")
public class CartController
{
    private final ProductRepository productRepository;

    /**
     * Khởi tạo giỏ hàng đơn giản, lưu trong session dưới dạng Map<productId, quantity>.
     */
    @ModelAttribute("cart")
    public Map<UUID, Integer> initCart()
    {
        return new LinkedHashMap<>();
    }

    /**
     * Hiển thị giỏ hàng.
     */
    @GetMapping("/view")
    public String viewCart(@ModelAttribute("cart") Map<UUID, Integer> cart, Model model)
    {
        List<CartLine> lines = cart.entrySet()
                .stream()
                .map(entry -> {
                    UUID productId = entry.getKey();
                    Integer quantity = entry.getValue();
                    Product product = productRepository.findById(productId).orElse(null);
                    if (product == null)
                    {
                        return null;
                    }
                    return new CartLine(product, quantity);
                })
                .filter(Objects::nonNull)
                .collect(Collectors.toList());

        model.addAttribute("cartLines", lines);
        model.addAttribute("currentPage", "cart");

        return "cartPage";
    }

    /**
     * Thêm sản phẩm vào giỏ hàng.
     */
    @PostMapping("/add")
    public String addToCart(
            @RequestParam("productId") UUID productId,
            @RequestParam(value = "quantity", defaultValue = "1") Integer quantity,
            @ModelAttribute("cart") Map<UUID, Integer> cart
    )
    {
        if (quantity == null || quantity <= 0)
        {
            quantity = 1;
        }

        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new IllegalArgumentException("Product not found: " + productId));

        cart.merge(product.getId(), quantity, Integer::sum);

        return "redirect:/cart/view";
    }

    /**
     * Cập nhật số lượng một sản phẩm trong giỏ.
     * Nếu quantity <= 0 thì xóa sản phẩm khỏi giỏ.
     */
    @PostMapping("/update")
    public String updateItem(
            @RequestParam("productId") UUID productId,
            @RequestParam("quantity") Integer quantity,
            @ModelAttribute("cart") Map<UUID, Integer> cart
    )
    {
        if (!cart.containsKey(productId))
        {
            return "redirect:/cart/view";
        }

        if (quantity == null || quantity <= 0)
        {
            cart.remove(productId);
        }
        else
        {
            cart.put(productId, quantity);
        }

        return "redirect:/cart/view";
    }

    /**
     * Xóa một sản phẩm khỏi giỏ.
     */
    @PostMapping("/remove")
    public String removeItem(
            @RequestParam("productId") UUID productId,
            @ModelAttribute("cart") Map<UUID, Integer> cart
    )
    {
        cart.remove(productId);
        return "redirect:/cart/view";
    }

    /**
     * Xóa toàn bộ giỏ hàng.
     */
    @PostMapping("/clear")
    public String clearCart(@ModelAttribute("cart") Map<UUID, Integer> cart)
    {
        cart.clear();
        return "redirect:/cart/view";
    }

    /**
     * Dữ liệu hiển thị cho từng dòng giỏ hàng.
     */
    public static class CartLine
    {
        private final Product product;
        private final int quantity;

        public CartLine(Product product, int quantity)
        {
            this.product = product;
            this.quantity = quantity;
        }

        public Product getProduct()
        {
            return product;
        }

        public int getQuantity()
        {
            return quantity;
        }
    }
}
