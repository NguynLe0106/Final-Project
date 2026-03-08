package ecommerce.model;

import ecommerce.entity.Product;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link Product}
 */
public record ProductDto(UUID id, String productName, Instant createdAt, Instant updatedAt, Instant deletedAt,
                         String sku, Double price, String status, String description,
                         String images) implements Serializable
{
}