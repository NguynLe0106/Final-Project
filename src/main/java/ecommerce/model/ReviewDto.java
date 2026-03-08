package ecommerce.model;

import ecommerce.entity.Review;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

/**
 * DTO for {@link Review}
 */
public record ReviewDto(UUID id, String content, Integer upVote, Integer downVote, Double start, Instant createdDate,
                        Instant updatedDate, Instant deletedDate) implements Serializable
{
}