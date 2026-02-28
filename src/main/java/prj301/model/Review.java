package prj301.model;

import jakarta.persistence.*;
import org.hibernate.annotations.ColumnDefault;

import java.time.Instant;
import java.util.UUID;

@Entity
@Table(name = "review")
public class Review
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "review_id_gen")
    @SequenceGenerator(name = "review_id_gen", sequenceName = " ")
    @Column(name = "id", nullable = false)
    private UUID id;

    @Lob
    @Column(name = "content")
    private String content;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @ColumnDefault("0")
    @Column(name = "up_vote", nullable = false)
    private Integer upVote;

    @ColumnDefault("0")
    @Column(name = "down_vote", nullable = false)
    private Integer downVote;

    @ColumnDefault("0.0")
    @Column(name = "start", nullable = false)
    private Double start;

    @ColumnDefault("getdate()")
    @Column(name = "created_date", nullable = false)
    private Instant createdDate;

    @Column(name = "updated_date")
    private Instant updatedDate;

    @Column(name = "deleted_date")
    private Instant deletedDate;

    public UUID getId()
    {
        return id;
    }

    public void setId(UUID id)
    {
        this.id = id;
    }

    public String getContent()
    {
        return content;
    }

    public void setContent(String content)
    {
        this.content = content;
    }

    public User getUser()
    {
        return user;
    }

    public void setUser(User user)
    {
        this.user = user;
    }

    public Integer getUpVote()
    {
        return upVote;
    }

    public void setUpVote(Integer upVote)
    {
        this.upVote = upVote;
    }

    public Integer getDownVote()
    {
        return downVote;
    }

    public void setDownVote(Integer downVote)
    {
        this.downVote = downVote;
    }

    public Double getStart()
    {
        return start;
    }

    public void setStart(Double start)
    {
        this.start = start;
    }

    public Instant getCreatedDate()
    {
        return createdDate;
    }

    public void setCreatedDate(Instant createdDate)
    {
        this.createdDate = createdDate;
    }

    public Instant getUpdatedDate()
    {
        return updatedDate;
    }

    public void setUpdatedDate(Instant updatedDate)
    {
        this.updatedDate = updatedDate;
    }

    public Instant getDeletedDate()
    {
        return deletedDate;
    }

    public void setDeletedDate(Instant deletedDate)
    {
        this.deletedDate = deletedDate;
    }

}