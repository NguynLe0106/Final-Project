package ecommerce.controller;

import ecommerce.model.user.LoginDto;
import ecommerce.model.user.UserDto;
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
        model.addAttribute("loginForm", new LoginDto());
        return "loginPage";
    }

    @GetMapping("/profile")
    public String userPage(Model model)
    {
        return "userPage";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute("loginForm") LoginDto loginDto, BindingResult result,  Model model)
    {
        try
        {
            log.info("Attempting to log in user: {}", loginDto);
            if (!userService.login(loginDto.getEmail(), loginDto.getPassword()))
            {
                log.error("Login failed for user: {}", loginDto);
                model.addAttribute("error", "Invalid username or password. Please try again.");
                model.addAttribute("loginForm", loginDto);
                return "loginPage";
            }
            log.info("User logged in successfully: {}", loginDto.getEmail());
            return "redirect:/";
        }
        catch (IllegalArgumentException e)
        {
            log.error("Login error for user {}: {}", e, e.getMessage());
            model.addAttribute("error", e.getMessage());
            return "loginPage";
        }
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
                var errors = result.getAllErrors();
                model.addAttribute("error", errors.get(errors.size() - 1).getDefaultMessage());
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
