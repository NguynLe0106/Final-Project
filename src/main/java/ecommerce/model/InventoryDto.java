package ecommerce.model;

import lombok.Value;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.Inventory}
 */
@Value
public class InventoryDto implements Serializable
{
    UUID id;
    Integer quantity;
    Instant createdDate;
    Instant updatedDate;
    Instant deletedDate;
}