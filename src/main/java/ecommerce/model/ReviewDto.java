package ecommerce.model;

import java.io.Serializable;
import java.time.Instant;
import java.util.Objects;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.Review}
 */
public class ReviewDto implements Serializable
{
    private final UUID id;
    private final String content;
    private final Integer upVote;
    private final Integer downVote;
    private final Double start;
    private final Instant createdDate;
    private final Instant updatedDate;
    private final Instant deletedDate;

    public ReviewDto(UUID id, String content, Integer upVote, Integer downVote, Double start, Instant createdDate, Instant updatedDate, Instant deletedDate)
    {
        this.id = id;
        this.content = content;
        this.upVote = upVote;
        this.downVote = downVote;
        this.start = start;
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
        this.deletedDate = deletedDate;
    }

    public UUID getId()
    {
        return id;
    }

    public String getContent()
    {
        return content;
    }

    public Integer getUpVote()
    {
        return upVote;
    }

    public Integer getDownVote()
    {
        return downVote;
    }

    public Double getStart()
    {
        return start;
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
        ReviewDto entity = (ReviewDto) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.content, entity.content) &&
                Objects.equals(this.upVote, entity.upVote) &&
                Objects.equals(this.downVote, entity.downVote) &&
                Objects.equals(this.start, entity.start) &&
                Objects.equals(this.createdDate, entity.createdDate) &&
                Objects.equals(this.updatedDate, entity.updatedDate) &&
                Objects.equals(this.deletedDate, entity.deletedDate);
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(id, content, upVote, downVote, start, createdDate, updatedDate, deletedDate);
    }

    @Override
    public String toString()
    {
        return getClass().getSimpleName() + "(" +
                "id = " + id + ", " +
                "content = " + content + ", " +
                "upVote = " + upVote + ", " +
                "downVote = " + downVote + ", " +
                "start = " + start + ", " +
                "createdDate = " + createdDate + ", " +
                "updatedDate = " + updatedDate + ", " +
                "deletedDate = " + deletedDate + ")";
    }
}