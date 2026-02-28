package ecommerce.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.time.Instant;
import java.util.Collection;
import java.util.UUID;

@Setter
@Getter
@Entity
@Table(name = "role")
public class Role
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "role_id_gen")
    @SequenceGenerator(name = "role_id_gen", sequenceName = " ")
    @Column(name = "id", nullable = false)
    private UUID id;

    @Column(name = "role_name", length = 20)
    private String roleName;

    @ColumnDefault("getdate()")
    @Column(name = "created_at", nullable = false)
    private Instant createdAt;

    @Column(name = "updated_at")
    private Instant updatedAt;

    @Column(name = "deleted_at")
    private Instant deletedAt;

    @ManyToMany
    private Collection<User> users;

}