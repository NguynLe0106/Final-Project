package ecommerce.model.cart;

import ecommerce.entity.CartItem;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link CartItem}
 */
public record CartItemDto(UUID id, Instant createdAt, Instant updatedAt, Instant deletedAt) implements Serializable
{
}