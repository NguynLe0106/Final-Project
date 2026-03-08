package ecommerce.model;

import ecommerce.entity.Cart;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link Cart}
 */
public record CartDto(UUID id, Instant createdDate, Instant updatedDate, Instant deletedDate) implements Serializable
{
}