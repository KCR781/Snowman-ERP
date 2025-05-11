package tech.buildrun.Snowman.DataLoader;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import tech.buildrun.Snowman.entity.Manager;
import tech.buildrun.Snowman.entity.User;
import tech.buildrun.Snowman.repository.ManagerRepository;
import tech.buildrun.Snowman.repository.UserRepository;

@Order(2)
@Component
public class UserDataInitializer {

    private final UserRepository userRepository;
    private final ManagerRepository managerRepository;
    private static final Logger logger = LoggerFactory.getLogger(UserDataInitializer.class);

    public UserDataInitializer(UserRepository userRepository, ManagerRepository managerRepository) {
        this.userRepository = userRepository;
        this.managerRepository = managerRepository;
    }

    @Transactional
    @EventListener(ApplicationReadyEvent.class)
    public void initializeData() {
        if (userRepository.count() == 0) {
            logger.info("No users found. Initializing user data...");

            Optional<Manager> optionalManager = managerRepository.findAll().stream().findFirst();

            if (optionalManager.isEmpty()) {
                logger.warn("Cannot initialize users because no managers exist.");
                return;
            }

            Manager manager = optionalManager.get();

            for (int i = 1; i <= 10; i++) {
                String username = "user" + i;
                String email = username + "@example.com";
                String password = "password" + i;

                User user = new User(username, email, password, manager);
                userRepository.save(user);
                logger.info("User '{}' created and associated with manager '{}'.", username, manager.getUsername());
            }

            logger.info("User data initialized successfully.");
        } else {
            logger.info("Users already exist. Skipping initialization.");
        }
    }
}