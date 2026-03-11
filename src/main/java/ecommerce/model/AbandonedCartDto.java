package ecommerce.model;

import java.io.Serializable;
import java.time.Instant;
import java.util.UUID;

public record AbandonedCartDto(
        UUID cartId,
        String sessionId,
        Instant lastUpdatedAt,
        int itemCount,
        double subtotal
) implements Serializable
{
}

