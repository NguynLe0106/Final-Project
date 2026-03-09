package ecommerce.service;

import ecommerce.model.UserDto;

public interface UserService
{
    UserDto register(UserDto userDto);
    boolean login(String email, String password);
}
