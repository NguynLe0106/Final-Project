package ecommerce.service.impl;

import at.favre.lib.crypto.bcrypt.BCrypt;
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

    @Override
    public boolean login(String email, String password)
    {
        var userOpt = userRepository.findUserByEmail(email);
        if (userOpt == null)
        {
            throw new IllegalArgumentException("User with email " + email + " not found");
        }

        String bcryptHashString = BCrypt.withDefaults().hashToString(12, password.toCharArray());
        BCrypt.Result result = BCrypt.verifyer().verify(password.toCharArray(), bcryptHashString);
        if (!result.toString().equals(userOpt.getPassword()))
        {
            throw new IllegalArgumentException("Invalid password for user with email " + email);
        }

        return true;
    }
}
