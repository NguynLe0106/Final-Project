package ecommerce.model.user;

import ecommerce.entity.User;
import jakarta.validation.constraints.*;
import lombok.*;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link User}
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto implements Serializable
{
    UUID id;
    @NotNull(message = "Name is mandatory")
    String name;
    @Email(message = "Email is invalid")
    String email;
    @Pattern(regexp = "^\\\\+(?:[0-9] ?){6,14}[0-9]$", message = "Phone number is invalid")
    String phone;
    @NotNull(message = "Password is mandatory")
    @Size(min = 8, message = "Password must be at least 8 characters long")
    String password;
    Instant createdAt;
}