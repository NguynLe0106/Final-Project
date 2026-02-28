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
@Table(name = "product")
public class Product
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "product_id_gen")
    @SequenceGenerator(name = "product_id_gen", sequenceName = " ")
    @Column(name = "id", nullable = false)
    private UUID id;

    @Column(name = "product_name", nullable = false, length = 1)
    private String productName;

    @ColumnDefault("getdate()")
    @Column(name = "created_at", nullable = false)
    private Instant createdAt;

    @Column(name = "updated_at")
    private Instant updatedAt;

    @Column(name = "deleted_at")
    private Instant deletedAt;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "category_id", nullable = false)
    private Category category;

    @Column(name = "sku", nullable = false, length = 30)
    private String sku;

    @ColumnDefault("0.0")
    @Column(name = "price", nullable = false)
    private Double price;

    @Column(name = "status", nullable = false, length = 1)
    private String status;

    @Lob
    @Column(name = "description")
    private String description;

    @Lob
    @Column(name = "images")
    private String images;

}