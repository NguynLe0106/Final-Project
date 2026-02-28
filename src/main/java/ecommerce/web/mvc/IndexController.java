package ecommerce.web.mvc;

import ecommerce.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@AllArgsConstructor
@Controller
@RequestMapping("/")
public class IndexController
{
    private final UserService userService;
    @RequestMapping
    public String index()
    {
        return "index";
    }
}
