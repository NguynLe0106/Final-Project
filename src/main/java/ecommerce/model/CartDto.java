package ecommerce.model;

import lombok.Value;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.Cart}
 */
@Value
public class CartDto implements Serializable
{
    UUID id;
    Instant createdDate;
    Instant updatedDate;
    Instant deletedDate;
}