package prj301.model;

import java.io.Serializable;
import java.time.Instant;
import java.util.Objects;
import java.util.UUID;

/**
 * DTO for {@link prj301.entity.Category}
 */
public class CategoryDto implements Serializable
{
    private final UUID id;
    private final String categoryName;
    private final Instant createdAt;
    private final Instant deletedAt;
    private final Instant updatedAt;

    public CategoryDto(UUID id, String categoryName, Instant createdAt, Instant deletedAt, Instant updatedAt)
    {
        this.id = id;
        this.categoryName = categoryName;
        this.createdAt = createdAt;
        this.deletedAt = deletedAt;
        this.updatedAt = updatedAt;
    }

    public UUID getId()
    {
        return id;
    }

    public String getCategoryName()
    {
        return categoryName;
    }

    public Instant getCreatedAt()
    {
        return createdAt;
    }

    public Instant getDeletedAt()
    {
        return deletedAt;
    }

    public Instant getUpdatedAt()
    {
        return updatedAt;
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
        CategoryDto entity = (CategoryDto) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.categoryName, entity.categoryName) &&
                Objects.equals(this.createdAt, entity.createdAt) &&
                Objects.equals(this.deletedAt, entity.deletedAt) &&
                Objects.equals(this.updatedAt, entity.updatedAt);
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(id, categoryName, createdAt, deletedAt, updatedAt);
    }

    @Override
    public String toString()
    {
        return getClass().getSimpleName() + "(" +
                "id = " + id + ", " +
                "categoryName = " + categoryName + ", " +
                "createdAt = " + createdAt + ", " +
                "deletedAt = " + deletedAt + ", " +
                "updatedAt = " + updatedAt + ")";
    }
}