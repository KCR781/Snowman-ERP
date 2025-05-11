package tech.buildrun.Snowman.DataLoader;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.core.annotation.Order;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Component;

import tech.buildrun.Snowman.entity.Manager;
import tech.buildrun.Snowman.repository.ManagerRepository;

@Order(1)
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
                    new Manager("manager1", "manager1@example.com", "password1"),
                    new Manager("manager2", "manager2@example.com", "password2"),
                    new Manager("manager3", "manager3@example.com", "password3"),
                    new Manager("manager4", "manager4@example.com", "password4"),
                    new Manager("manager5", "manager5@example.com", "password5"),
                    new Manager("manager6", "manager6@example.com", "password6"),
                    new Manager("manager7", "manager7@example.com", "password7"),
                    new Manager("manager8", "manager8@example.com", "password8"),
                    new Manager("manager9", "manager9@example.com", "password9"),
                    new Manager("manager10", "manager10@example.com", "password10")
                }) {
                    managerRepository.save(manager);
                }

                logger.info("Manager data initialized successfully.");
            } else {
                logger.info("Managers already exist. Skipping initialization.");
            }
        } catch (DataAccessException e) {
            logger.error("Error while inserting manager data: " + e.getMessage(), e);
            throw new RuntimeException("Error while initializing manager data", e);
        } catch (Exception e) {
            logger.error("Unexpected error during manager data initialization: " + e.getMessage(), e);
            throw new RuntimeException("Unexpected error during initialization", e);
        }
    }
}
