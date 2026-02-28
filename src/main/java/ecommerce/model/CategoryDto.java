package ecommerce.model;

import lombok.Value;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.Category}
 */
@Value
public class CategoryDto implements Serializable
{
    UUID id;
    String categoryName;
    Instant createdAt;
    Instant deletedAt;
    Instant updatedAt;
}