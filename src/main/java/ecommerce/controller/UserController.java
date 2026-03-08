package ecommerce.controller;

import ecommerce.model.UserDto;
import ecommerce.service.UserService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

@Log4j2
@AllArgsConstructor
@Controller
@RequestMapping("/user")
public class UserController
{
    private final UserService userService;

    @GetMapping("/signup")
    public String signupPage(Model model)
    {
        return "signupPage";
    }

    @GetMapping("/login")
    public String loginPage(Model model)
    {
        return "loginPage";
    }

    @GetMapping("/profile")
    public String userPage(Model model)
    {
        return "userPage";
    }

    @PostMapping("/signup")
    public String signup(UserDto userDto, Model model)
    {
        try
        {
            log.info("Attempting to register user: {}", userDto);
            if (userService.register(userDto) == null)
            {
                log.error("Registration failed for user: {}", userDto);
                model.addAttribute("error", "Registration failed. Please try again.");
                return "signupPage";
            }
            log.info("User registered successfully: {}", userDto);
            model.addAttribute("success", "Registration successful! Please log in.");
            return "redirect:/user/login";
        }
        catch (IllegalArgumentException e)
        {
            log.error("Registration error for user {}: {}", userDto, e.getMessage());
            model.addAttribute("Registration failed ", e.getMessage());
            return "signupPage";
        }
    }
}
