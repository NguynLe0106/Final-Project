package prj301.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.ColumnDefault;

import java.time.Instant;
import java.util.UUID;

@Entity
@Table(name = "audit_log")
public class AuditLog
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "audit_log_id_gen")
    @SequenceGenerator(name = "audit_log_id_gen", sequenceName = " ")
    @Column(name = "id", nullable = false)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "table_name", nullable = false, length = 1)
    private String tableName;

    @Lob
    @Column(name = "object_before")
    private String objectBefore;

    @Lob
    @Column(name = "object_after")
    private String objectAfter;

    @Column(name = "\"action\"", nullable = false, length = 1)
    private String action;

    @ColumnDefault("getdate()")
    @Column(name = "created_at", nullable = false)
    private Instant createdAt;

    @Column(name = "updated_at")
    private Instant updatedAt;

    @Column(name = "deleted_at")
    private Instant deletedAt;

    public UUID getId()
    {
        return id;
    }

    public void setId(UUID id)
    {
        this.id = id;
    }

    public User getUser()
    {
        return user;
    }

    public void setUser(User user)
    {
        this.user = user;
    }

    public String getTableName()
    {
        return tableName;
    }

    public void setTableName(String tableName)
    {
        this.tableName = tableName;
    }

    public String getObjectBefore()
    {
        return objectBefore;
    }

    public void setObjectBefore(String objectBefore)
    {
        this.objectBefore = objectBefore;
    }

    public String getObjectAfter()
    {
        return objectAfter;
    }

    public void setObjectAfter(String objectAfter)
    {
        this.objectAfter = objectAfter;
    }

    public String getAction()
    {
        return action;
    }

    public void setAction(String action)
    {
        this.action = action;
    }

    public Instant getCreatedAt()
    {
        return createdAt;
    }

    public void setCreatedAt(Instant createdAt)
    {
        this.createdAt = createdAt;
    }

    public Instant getUpdatedAt()
    {
        return updatedAt;
    }

    public void setUpdatedAt(Instant updatedAt)
    {
        this.updatedAt = updatedAt;
    }

    public Instant getDeletedAt()
    {
        return deletedAt;
    }

    public void setDeletedAt(Instant deletedAt)
    {
        this.deletedAt = deletedAt;
    }

}