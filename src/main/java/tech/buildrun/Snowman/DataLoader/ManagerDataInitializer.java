package tech.buildrun.Snowman.DataLoader;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Component;

import tech.buildrun.Snowman.entity.Manager;
import tech.buildrun.Snowman.repository.ManagerRepository;

@Component
public class ManagerDataInitializer {

    private final ManagerRepository managerRepository;
    private static final Logger logger = LoggerFactory.getLogger(ManagerDataInitializer.class);

    public ManagerDataInitializer(ManagerRepository managerRepository) {
        this.managerRepository = managerRepository;
    }

    @EventListener(ApplicationReadyEvent.class)
    public void initializeData() {
        try {
            if (managerRepository.count() == 0) {
                logger.info("No managers found. Initializing manager data...");

                for (Manager manager : new Manager[]{
                    new Manager(UUID.randomUUID(), "manager1", "manager1@example.com", "password1"),
                    new Manager(UUID.randomUUID(), "manager2", "manager2@example.com", "password2"),
                    new Manager(UUID.randomUUID(), "manager3", "manager3@example.com", "password3"),
                    new Manager(UUID.randomUUID(), "manager4", "manager4@example.com", "password4"),
                    new Manager(UUID.randomUUID(), "manager5", "manager5@example.com", "password5"),
                    new Manager(UUID.randomUUID(), "manager6", "manager6@example.com", "password6"),
                    new Manager(UUID.randomUUID(), "manager7", "manager7@example.com", "password7"),
                    new Manager(UUID.randomUUID(), "manager8", "manager8@example.com", "password8"),
                    new Manager(UUID.randomUUID(), "manager9", "manager9@example.com", "password9"),
                    new Manager(UUID.randomUUID(), "manager10", "manager10@example.com", "password10")
                }) {
                    managerRepository.findById(manager.getManagerId()).ifPresentOrElse(
                        existingManager -> {
                            if (!existingManager.getVersion().equals(manager.getVersion())) {
                                logger.warn("Version mismatch for Manager with ID " + manager.getManagerId() + ". Skipping initialization.");
                            } else {
                                logger.info("Manager with ID " + manager.getManagerId() + " already exists with matching version. Skipping initialization.");
                            }
                        },
                        () -> managerRepository.save(manager)
                    );
                }

                logger.info("Manager data initialized successfully.");
            }
        } catch (DataAccessException e) {
            // Log database-related errors (e.g., constraint violation, connection issues)
            logger.error("Error while inserting manager data: " + e.getMessage(), e);
            throw new RuntimeException("Error while initializing manager data", e);
        } catch (Exception e) {
            // Catch any other unexpected errors
            logger.error("Unexpected error during manager data initialization: " + e.getMessage(), e);
            throw new RuntimeException("Unexpected error during initialization", e);
        }
    }
}