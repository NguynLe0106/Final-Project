package ecommerce.model;

import java.io.Serializable;
import java.time.Instant;
import java.util.Objects;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.Inventory}
 */
public class InventoryDto implements Serializable
{
    private final UUID id;
    private final Integer quantity;
    private final Instant createdDate;
    private final Instant updatedDate;
    private final Instant deletedDate;

    public InventoryDto(UUID id, Integer quantity, Instant createdDate, Instant updatedDate, Instant deletedDate)
    {
        this.id = id;
        this.quantity = quantity;
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
        this.deletedDate = deletedDate;
    }

    public UUID getId()
    {
        return id;
    }

    public Integer getQuantity()
    {
        return quantity;
    }

    public Instant getCreatedDate()
    {
        return createdDate;
    }

    public Instant getUpdatedDate()
    {
        return updatedDate;
    }

    public Instant getDeletedDate()
    {
        return deletedDate;
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
        InventoryDto entity = (InventoryDto) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.quantity, entity.quantity) &&
                Objects.equals(this.createdDate, entity.createdDate) &&
                Objects.equals(this.updatedDate, entity.updatedDate) &&
                Objects.equals(this.deletedDate, entity.deletedDate);
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(id, quantity, createdDate, updatedDate, deletedDate);
    }

    @Override
    public String toString()
    {
        return getClass().getSimpleName() + "(" +
                "id = " + id + ", " +
                "quantity = " + quantity + ", " +
                "createdDate = " + createdDate + ", " +
                "updatedDate = " + updatedDate + ", " +
                "deletedDate = " + deletedDate + ")";
    }
}