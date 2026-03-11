package ecommerce.model.user;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginDto
{
    @NotNull(message = "Email is mandatory")
    String email;
    @NotNull(message = "Password is mandatory")
    String password;
}
