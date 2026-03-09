package ecommerce.controller;
import ecommerce.entity.Product;
import ecommerce.repository.ProductRepository;
import lombok.AllArgsConstructor;
import lombok.Getter;
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

    @ModelAttribute("cart")
    public Map<UUID, Integer> initCart()
    {
        return new LinkedHashMap<>();
    }




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

    @PostMapping("/remove")
    public String removeItem(
            @RequestParam("productId") UUID productId,
            @ModelAttribute("cart") Map<UUID, Integer> cart
    )
    {
        cart.remove(productId);
        return "redirect:/cart/view";
    }


    @PostMapping("/clear")
    public String clearCart(@ModelAttribute("cart") Map<UUID, Integer> cart)
    {
        cart.clear();
        return "redirect:/cart/view";
    }


    @Getter
    public static class CartLine
    {
        private final Product product;
        private final int quantity;

        public CartLine(Product product, int quantity)
        {
            this.product = product;
            this.quantity = quantity;
        }

    }
}
