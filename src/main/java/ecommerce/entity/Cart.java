package ecommerce.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.data.annotation.CreatedDate;

import java.time.Instant;
import java.util.UUID;

@Setter
@Getter
@Entity
@Table(name = "cart")
public class Cart
{
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id", nullable = false)
    private UUID id;

    @CreationTimestamp
    @ColumnDefault("getdate()")
    @Column(name = "created_date", nullable = false)
    private Instant createdDate;

    @Column(name = "updated_date")
    private Instant updatedDate;

    @Column(name = "deleted_date")
    private Instant deletedDate;

    @Column(name = "session_id", length = 100)
    private String sessionId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

}