package ecommerce.model;

import ecommerce.entity.Category;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link Category}
 */
public record CategoryDto(UUID id, String categoryName, Instant createdAt, Instant deletedAt,
                          Instant updatedAt) implements Serializable
{
}