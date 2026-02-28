package ecommerce.model;

import java.io.Serializable;
import java.time.Instant;
import java.util.Objects;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.Cart}
 */
public class CartDto implements Serializable
{
    private final UUID id;
    private final Instant createdDate;
    private final Instant updatedDate;
    private final Instant deletedDate;

    public CartDto(UUID id, Instant createdDate, Instant updatedDate, Instant deletedDate)
    {
        this.id = id;
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
        this.deletedDate = deletedDate;
    }

    public UUID getId()
    {
        return id;
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
        CartDto entity = (CartDto) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.createdDate, entity.createdDate) &&
                Objects.equals(this.updatedDate, entity.updatedDate) &&
                Objects.equals(this.deletedDate, entity.deletedDate);
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(id, createdDate, updatedDate, deletedDate);
    }

    @Override
    public String toString()
    {
        return getClass().getSimpleName() + "(" +
                "id = " + id + ", " +
                "createdDate = " + createdDate + ", " +
                "updatedDate = " + updatedDate + ", " +
                "deletedDate = " + deletedDate + ")";
    }
}