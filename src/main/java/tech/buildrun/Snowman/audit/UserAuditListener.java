package tech.buildrun.Snowman.audit;

import java.time.Instant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import jakarta.persistence.PostPersist;
import jakarta.persistence.PostRemove;
import jakarta.persistence.PostUpdate;
import tech.buildrun.Snowman.entity.User;
import tech.buildrun.Snowman.entity.UserAudit;
import tech.buildrun.Snowman.repository.UserAuditRepository;

@Component
public class UserAuditListener {

    private static UserAuditRepository userAuditRepository;

    @Autowired
    public void setUserAuditRepository(UserAuditRepository repo) {
        userAuditRepository = repo;
    }

    @PostPersist
    public void postPersist(User user) {
        saveAudit(user, "INSERT");
    }

    @PostUpdate
    public void postUpdate(User user) {
        saveAudit(user, "UPDATE");
    }

    @PostRemove
    public void postRemove(User user) {
        saveAudit(user, "DELETE");
    }

    private void saveAudit(User user, String action) {
        UserAudit audit = new UserAudit();
        audit.setUserId(user.getUserId() != null ? user.getUserId().toString() : null);
        audit.setUserEmail(user.getEmail());
        audit.setActionType(action);
        audit.setCreatedAt(Instant.now());
        userAuditRepository.save(audit);
    }
}
