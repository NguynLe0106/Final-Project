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
@Table(name = "\"user\"")
public class User
{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_id_gen")
    @SequenceGenerator(name = "user_id_gen", sequenceName = " ")
    @Column(name = "id", nullable = false)
    private UUID id;

    @Column(name = "username", nullable = false, length = 1)
    private String username;

    @Column(name = "email", length = 1)
    private String email;

    @Column(name = "phone", length = 1)
    private String phone;

    @Column(name = "password", nullable = false, length = 1)
    private String password;

    @ColumnDefault("getdate()")
    @Column(name = "created_at", nullable = false)
    private Instant createdAt;

    @Column(name = "updated_at")
    private Instant updatedAt;

    @Column(name = "deleted_at")
    private Instant deletedAt;

    @ManyToMany
    private Collection<Role> roles;

}