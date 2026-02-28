package ecommerce.model;

import java.io.Serializable;
import java.time.Instant;
import java.util.Objects;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.Product}
 */
public class ProductDto implements Serializable
{
    private final UUID id;
    private final String productName;
    private final Instant createdAt;
    private final Instant updatedAt;
    private final Instant deletedAt;
    private final String sku;
    private final Double price;
    private final String status;
    private final String description;
    private final String images;

    public ProductDto(UUID id, String productName, Instant createdAt, Instant updatedAt, Instant deletedAt, String sku, Double price, String status, String description, String images)
    {
        this.id = id;
        this.productName = productName;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.deletedAt = deletedAt;
        this.sku = sku;
        this.price = price;
        this.status = status;
        this.description = description;
        this.images = images;
    }

    public UUID getId()
    {
        return id;
    }

    public String getProductName()
    {
        return productName;
    }

    public Instant getCreatedAt()
    {
        return createdAt;
    }

    public Instant getUpdatedAt()
    {
        return updatedAt;
    }

    public Instant getDeletedAt()
    {
        return deletedAt;
    }

    public String getSku()
    {
        return sku;
    }

    public Double getPrice()
    {
        return price;
    }

    public String getStatus()
    {
        return status;
    }

    public String getDescription()
    {
        return description;
    }

    public String getImages()
    {
        return images;
    }

    @Override
    public boolean equals(Object o)
    {
        if (this == o)
        {
            return true;
        }
        if (o == null || getClass() != o.getClass())
        {
            return false;
        }
        ProductDto entity = (ProductDto) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.productName, entity.productName) &&
                Objects.equals(this.createdAt, entity.createdAt) &&
                Objects.equals(this.updatedAt, entity.updatedAt) &&
                Objects.equals(this.deletedAt, entity.deletedAt) &&
                Objects.equals(this.sku, entity.sku) &&
                Objects.equals(this.price, entity.price) &&
                Objects.equals(this.status, entity.status) &&
                Objects.equals(this.description, entity.description) &&
                Objects.equals(this.images, entity.images);
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(id, productName, createdAt, updatedAt, deletedAt, sku, price, status, description, images);
    }

    @Override
    public String toString()
    {
        return getClass().getSimpleName() + "(" +
                "id = " + id + ", " +
                "productName = " + productName + ", " +
                "createdAt = " + createdAt + ", " +
                "updatedAt = " + updatedAt + ", " +
                "deletedAt = " + deletedAt + ", " +
                "sku = " + sku + ", " +
                "price = " + price + ", " +
                "status = " + status + ", " +
                "description = " + description + ", " +
                "images = " + images + ")";
    }
}