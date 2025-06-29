package tech.buildrun.Snowman.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import tech.buildrun.Snowman.entity.UserAudit;

public interface UserAuditRepository extends JpaRepository<UserAudit, Long> {
}
