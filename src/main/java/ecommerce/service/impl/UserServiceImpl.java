package ecommerce.service.impl;

import ecommerce.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class UserServiceImpl implements ecommerce.service.UserService
{
    private final UserRepository userRepository;
}
