package prj301.model;

import java.io.Serializable;
import java.time.Instant;
import java.util.Objects;
import java.util.UUID;

/**
 * DTO for {@link prj301.entity.User}
 */
public class UserDto implements Serializable
{
    private final UUID id;
    private final String username;
    private final String email;
    private final String phone;
    private final String password;
    private final Instant createdAt;
    private final Instant updatedAt;
    private final Instant deletedAt;

    public UserDto(UUID id, String username, String email, String phone, String password, Instant createdAt, Instant updatedAt, Instant deletedAt)
    {
        this.id = id;
        this.username = username;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.deletedAt = deletedAt;
    }

    public UUID getId()
    {
        return id;
    }

    public String getUsername()
    {
        return username;
    }

    public String getEmail()
    {
        return email;
    }

    public String getPhone()
    {
        return phone;
    }

    public String getPassword()
    {
        return password;
    }

    public Instant getCreatedAt()
    {
        return createdAt;
    }

    public Instant getUpdatedAt()
    {
        return updatedAt;
    }

    public Instant getDeletedAt()
    {
        return deletedAt;
    }

    @Override
    public boolean equals(Object o)
    {
        if (this == o)
        {
            return true;
        }
        if (o == null || getClass() != o.getClass())
        {
            return false;
        }
        UserDto entity = (UserDto) o;
        return Objects.equals(this.id, entity.id) &&
                Objects.equals(this.username, entity.username) &&
                Objects.equals(this.email, entity.email) &&
                Objects.equals(this.phone, entity.phone) &&
                Objects.equals(this.password, entity.password) &&
                Objects.equals(this.createdAt, entity.createdAt) &&
                Objects.equals(this.updatedAt, entity.updatedAt) &&
                Objects.equals(this.deletedAt, entity.deletedAt);
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(id, username, email, phone, password, createdAt, updatedAt, deletedAt);
    }

    @Override
    public String toString()
    {
        return getClass().getSimpleName() + "(" +
                "id = " + id + ", " +
                "username = " + username + ", " +
                "email = " + email + ", " +
                "phone = " + phone + ", " +
                "password = " + password + ", " +
                "createdAt = " + createdAt + ", " +
                "updatedAt = " + updatedAt + ", " +
                "deletedAt = " + deletedAt + ")";
    }
}