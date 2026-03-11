package ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ecommerce.entity.CartItem;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, UUID>, JpaSpecificationExecutor<CartItem>
{
    @Query("""
            select ci
            from CartItem ci
            join fetch ci.product
            join fetch ci.cart
            where ci.deletedAt is null
              and ci.cart.id = :cartId
            """)
    List<CartItem> findActiveItemsByCartId(UUID cartId);

    @Query("""
            select ci
            from CartItem ci
            join fetch ci.product
            join fetch ci.cart
            where ci.deletedAt is null
              and ci.cart.id in :cartIds
            """)
    List<CartItem> findActiveItemsByCartIds(List<UUID> cartIds);

    Optional<CartItem> findFirstByCartIdAndProductIdAndDeletedAtIsNull(UUID cartId, UUID productId);
}