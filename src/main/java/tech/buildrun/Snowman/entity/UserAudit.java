package tech.buildrun.Snowman.entity;

import java.time.Instant;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_user_audit")
public class UserAudit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long audit_id;

    private String user_email;
    private String user_id;
    private String action_type;
    private Instant created_at;

    // Getters e setters
    public Long getAuditId() { return audit_id; }
    public void setAuditId(Long audit_id) { this.audit_id = audit_id; }

    public String getUserEmail() { return user_email; }
    public void setUserEmail(String user_email) { this.user_email = user_email; }

    public String getUserId() { return user_id; }
    public void setUserId(String user_id) { this.user_id = user_id; }

    public String getActionType() { return action_type; }
    public void setActionType(String action_type) { this.action_type = action_type; }

    public Instant getCreatedAt() { return created_at; }
    public void setCreatedAt(Instant created_at) { this.created_at = created_at; }
}
