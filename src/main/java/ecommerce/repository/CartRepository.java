package ecommerce.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;
import ecommerce.entity.Cart;

import java.util.UUID;

@Repository
public interface CartRepository extends JpaRepository<Cart, UUID>, JpaSpecificationExecutor<Cart> {}