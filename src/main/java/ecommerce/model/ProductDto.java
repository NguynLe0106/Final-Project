package ecommerce.model;

import lombok.Value;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.Product}
 */
@Value
public class ProductDto implements Serializable
{
    UUID id;
    String productName;
    Instant createdAt;
    Instant updatedAt;
    Instant deletedAt;
    String sku;
    Double price;
    String status;
    String description;
    String images;
}