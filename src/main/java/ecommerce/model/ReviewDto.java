package ecommerce.model;

import lombok.Value;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link ecommerce.entity.Review}
 */
@Value
public class ReviewDto implements Serializable
{
    UUID id;
    String content;
    Integer upVote;
    Integer downVote;
    Double start;
    Instant createdDate;
    Instant updatedDate;
    Instant deletedDate;
}