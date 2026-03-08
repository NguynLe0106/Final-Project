package ecommerce.service.impl;

import ecommerce.entity.User;
import ecommerce.model.UserDto;
import ecommerce.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class UserServiceImpl implements ecommerce.service.UserService
{
    private final UserRepository userRepository;

    @Override
    public UserDto register(UserDto userDto)
    {
        if (userRepository.existsByEmail(userDto.getEmail()))
        {
            throw new IllegalArgumentException("User with email " + userDto.getEmail() + " already exists");
        }

        // Map UserDto to User entity
        var user = new User();
        BeanUtils.copyProperties(userDto, user, "id", "createdAt", "updatedAt", "deletedAt");
        var savedUser = userRepository.save(user);
        BeanUtils.copyProperties(savedUser, userDto);
        return userDto;
    }
}
