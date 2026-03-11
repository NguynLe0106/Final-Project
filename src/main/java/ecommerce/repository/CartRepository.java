package ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ecommerce.entity.Cart;

import java.time.Instant;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface CartRepository extends JpaRepository<Cart, UUID>, JpaSpecificationExecutor<Cart>
{
    Optional<Cart> findFirstBySessionIdAndDeletedDateIsNullOrderByCreatedDateDesc(String sessionId);

    @Query("""
            select c
            from Cart c
            where c.deletedDate is null
              and coalesce(c.updatedDate, c.createdDate) < :cutoff
              and exists (
                    select 1
                    from CartItem ci
                    where ci.cart = c
                      and ci.deletedAt is null
                )
            order by coalesce(c.updatedDate, c.createdDate) asc
            """)
    List<Cart> findAbandonedSince(Instant cutoff);
}