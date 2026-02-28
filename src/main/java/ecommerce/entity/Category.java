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
@Table(name = "category")
public class Category
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "category_id_gen")
    @SequenceGenerator(name = "category_id_gen", sequenceName = " ")
    @Column(name = "id", nullable = false)
    private UUID id;

    @Column(name = "category_name", length = 1)
    private String categoryName;

    @ColumnDefault("getdate()")
    @Column(name = "created_at", nullable = false)
    private Instant createdAt;

    @Column(name = "deleted_at")
    private Instant deletedAt;

    @Column(name = "updated_at")
    private Instant updatedAt;

}