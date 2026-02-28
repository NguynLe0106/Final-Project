package ecommerce.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.time.Instant;
import java.util.UUID;

@Setter
@Getter
@Entity
@Table(name = "inventory")
public class Inventory
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "inventory_id_gen")
    @SequenceGenerator(name = "inventory_id_gen", sequenceName = " ")
    @Column(name = "id", nullable = false)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @ColumnDefault("0")
    @Column(name = "quantity", nullable = false)
    private Integer quantity;

    @ColumnDefault("getdate()")
    @Column(name = "created_date", nullable = false)
    private Instant createdDate;

    @Column(name = "updated_date")
    private Instant updatedDate;

    @Column(name = "deleted_date")
    private Instant deletedDate;

}