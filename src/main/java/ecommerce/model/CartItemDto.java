package ecommerce.model;

import java.io.Serializable;
import java.time.Instant;
import java.util.Objects;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.CartItem}
 */
public class CartItemDto implements Serializable
{
    private final UUID id;
    private final Instant createdAt;
    private final Instant updatedAt;
    private final Instant deletedAt;

    public CartItemDto(UUID id, Instant createdAt, Instant updatedAt, Instant deletedAt)
    {
        this.id = id;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.deletedAt = deletedAt;
    }

    public UUID getId()
    {
        return id;
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
        CartItemDto entity = (CartItemDto) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.createdAt, entity.createdAt) &&
                Objects.equals(this.updatedAt, entity.updatedAt) &&
                Objects.equals(this.deletedAt, entity.deletedAt);
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(id, createdAt, updatedAt, deletedAt);
    }

    @Override
    public String toString()
    {
        return getClass().getSimpleName() + "(" +
                "id = " + id + ", " +
                "createdAt = " + createdAt + ", " +
                "updatedAt = " + updatedAt + ", " +
                "deletedAt = " + deletedAt + ")";
    }
}