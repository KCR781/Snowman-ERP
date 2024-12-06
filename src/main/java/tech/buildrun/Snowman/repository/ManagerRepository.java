package tech.buildrun.Snowman.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import tech.buildrun.Snowman.entity.Manager;
import java.util.UUID;

public interface ManagerRepository extends JpaRepository<Manager, UUID> {
}
