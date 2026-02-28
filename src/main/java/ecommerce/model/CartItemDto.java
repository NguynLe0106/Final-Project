package ecommerce.model;

import lombok.Value;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.CartItem}
 */
@Value
public class CartItemDto implements Serializable
{
    UUID id;
    Instant createdAt;
    Instant updatedAt;
    Instant deletedAt;
}