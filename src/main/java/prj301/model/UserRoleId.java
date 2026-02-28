package prj301.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

import java.io.Serial;
import java.io.Serializable;
import java.util.Objects;
import java.util.UUID;

@Embeddable
public class UserRoleId implements Serializable
{
    @Serial
    private static final long serialVersionUID = -865008083613872176L;
    @Column(name = "role_id", nullable = false)
    private UUID roleId;

    @Column(name = "user_id", nullable = false)
    private UUID userId;

    public UUID getRoleId()
    {
        return roleId;
    }

    public void setRoleId(UUID roleId)
    {
        this.roleId = roleId;
    }

    public UUID getUserId()
    {
        return userId;
    }

    public void setUserId(UUID userId)
    {
        this.userId = userId;
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
        UserRoleId entity = (UserRoleId) o;
        return Objects.equals(this.roleId, entity.roleId) &&
                Objects.equals(this.userId, entity.userId);
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(roleId, userId);
    }
}