package ecommerce.controller;

import ecommerce.service.CartService;
import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.UUID;

@Log4j2
@AllArgsConstructor
@Controller
@RequestMapping("/cart")
public class CartController
{
    private final CartService cartService;

    @GetMapping("/view")
    public String viewCart(HttpSession session, Model model)
    {
        String sessionId = session.getId();
        var lines = cartService.getLines(sessionId);
        double subtotal = cartService.getSubtotal(sessionId);

        model.addAttribute("lines", lines);
        model.addAttribute("subtotal", subtotal);
        model.addAttribute("total", subtotal);
        model.addAttribute("itemCount", cartService.getItemCount(sessionId));
        return "cartPage";
    }

    @GetMapping("/abandoned")
    public String abandonedCarts(
            @RequestParam(value = "minAgeMinutes", defaultValue = "60") int minAgeMinutes,
            @RequestParam(value = "limit", defaultValue = "50") int limit,
            Model model
    )
    {
        var carts = cartService.searchAbandonedCarts(minAgeMinutes, limit);
        model.addAttribute("minAgeMinutes", minAgeMinutes);
        model.addAttribute("limit", limit);
        model.addAttribute("abandonedCarts", carts);
        return "abandonedCartsPage";
    }

    @PostMapping("/add")
    public String addToCart(
            @RequestParam("productId") UUID productId,
            @RequestParam(value = "quantity", defaultValue = "1") Integer quantity,
            HttpSession session
    )
    {
        cartService.addItem(session.getId(), productId, quantity == null ? 1 : quantity);

        return "redirect:/cart/view";
    }

    @PostMapping("/update")
    public String updateItem(
            @RequestParam("productId") UUID productId,
            @RequestParam("quantity") Integer quantity,
            HttpSession session
    )
    {
        cartService.updateItem(session.getId(), productId, quantity == null ? 0 : quantity);

        return "redirect:/cart/view";
    }

    @PostMapping("/remove")
    public String removeItem(
            @RequestParam("productId") UUID productId,
            HttpSession session
    )
    {
        cartService.removeItem(session.getId(), productId);
        return "redirect:/cart/view";
    }


    @PostMapping("/clear")
    public String clearCart(HttpSession session)
    {
        cartService.clear(session.getId());
        return "redirect:/cart/view";
    }
}
