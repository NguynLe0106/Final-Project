package ecommerce.model;

import lombok.Value;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.User}
 */
@Value
public class UserDto implements Serializable
{
    UUID id;
    String username;
    String email;
    String phone;
    String password;
    Instant createdAt;
    Instant updatedAt;
    Instant deletedAt;
}