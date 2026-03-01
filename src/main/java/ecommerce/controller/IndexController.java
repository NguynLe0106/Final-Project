package ecommerce.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@AllArgsConstructor
@Controller
@RequestMapping("/")
public class IndexController
{
    @RequestMapping
    public String index()
    {
        return "index";
    }

    @GetMapping("/signup")
    public String signupPage(Model model)
    {
        model.addAttribute("currentPage", "signup");
        return "signup";
    }

    @PostMapping("/signup")
    public String signupSubmit()
    {
        return "redirect:/";
    }

    @GetMapping("/account")
    public String accountPage(Model model)
    {
        model.addAttribute("currentPage", "account");
        model.addAttribute("userDisplayName", "Md Rimel");
        return "account";
    }

    @PostMapping("/account")
    public String accountSubmit()
    {
        return "redirect:/account";
    }

    @GetMapping("/product")
    public String productPage()
    {
        return "product";
    }

    @GetMapping("/contact")
    public String contactPage(Model model)
    {
        model.addAttribute("currentPage", "contact");
        return "contact";
    }

    @PostMapping("/contact")
    public String contactSubmit()
    {
        return "redirect:/contact";
    }

    @GetMapping("/cart")
    public String cartPage()
    {
        return "cart";
    }

    @PostMapping("/cart")
    public String cartSubmit()
    {
        return "redirect:/cart";
    }
}
