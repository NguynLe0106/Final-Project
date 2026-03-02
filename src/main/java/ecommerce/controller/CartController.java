package ecommerce.controller;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Log4j2
@AllArgsConstructor
@Controller
@RequestMapping("/cart")
public class CartController
{
    @GetMapping("/view")
    public String viewCart()
    {
        return "cartPage";
    }
}
