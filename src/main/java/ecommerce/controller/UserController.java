package ecommerce.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

@AllArgsConstructor
@Controller
@RequestMapping("/user")
public class UserController
{
    @GetMapping("/signup")
    public String index(Model model)
    {
        model.addAttribute("currentPage", "signup");
        return "signupPage";
    }
}
