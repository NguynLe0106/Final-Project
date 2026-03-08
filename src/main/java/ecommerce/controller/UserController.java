package ecommerce.controller;

import ecommerce.model.UserDto;
import ecommerce.service.UserService;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import java.util.UUID;

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
        model.addAttribute("signup", new UserDto());
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
    public String signup(@Valid @ModelAttribute("signup") UserDto userDto, BindingResult result,  Model model)
    {
        try
        {
            log.info("Attempting to register user: {}", userDto);
            if (result.hasErrors())
            {
                log.warn("Validation errors for user {}: {}", userDto, result.getAllErrors());
                model.addAttribute("error", result.getAllErrors().getLast().getDefaultMessage());
                return "signupPage";
            }

            if (userService.register(userDto) == null)
            {
                log.error("Registration failed for user: {}", userDto);
                model.addAttribute("error", "Registration failed. Please try again.");
                return "signupPage";
            }
            log.info("User registered successfully: {}", userDto);
            model.addAttribute("msg", "Registration successful! Please log in.");
            return "redirect:/user/login";
        }
        catch (IllegalArgumentException e)
        {
            log.error("Registration error for user {}: {}", userDto, e.getMessage());
            model.addAttribute("error", e.getMessage());
            return "signupPage";
        }
    }
}
