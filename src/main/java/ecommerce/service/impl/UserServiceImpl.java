package ecommerce.service.impl;

import ecommerce.entity.User;
import ecommerce.model.UserDto;
import ecommerce.model.validator.UserDtoValidator;
import ecommerce.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class UserServiceImpl implements ecommerce.service.UserService
{
    private final UserRepository userRepository;
    private final UserDtoValidator userDtoValidator;

    @Override
    public UserDto register(UserDto userDto)
    {
        if (userRepository.existsByEmail(userDto.email()))
        {
            throw new IllegalArgumentException("User with email " + userDto.email() + " already exists");
        }

        if (userRepository.existsByPhone(userDto.phone()))
        {
            throw new IllegalArgumentException("User with phone " + userDto.phone() + " already exists");
        }

        var validationErrors = userDtoValidator.validateObject(userDto);
        if (validationErrors.hasErrors())
        {
            throw new IllegalArgumentException("User data is invalid: " + validationErrors.getAllErrors());
        }

        // Map UserDto to User entity
        var user = new User();
        BeanUtils.copyProperties(userDto, user, "id", "createdAt", "updatedAt", "deletedAt");
        var savedUser = userRepository.save(user);
        BeanUtils.copyProperties(savedUser, userDto);
        return userDto;
    }
}
