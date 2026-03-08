package ecommerce.model;

import ecommerce.entity.Inventory;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link Inventory}
 */
public record InventoryDto(UUID id, Integer quantity, Instant createdDate, Instant updatedDate,
                           Instant deletedDate) implements Serializable
{
}