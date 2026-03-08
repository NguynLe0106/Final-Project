package ecommerce.model;

import ecommerce.entity.User;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link User}
 */
public record UserDto(UUID id, String name, String email, String phone, String password, Instant createdAt,
                      Instant updatedAt, Instant deletedAt) implements Serializable
{
}