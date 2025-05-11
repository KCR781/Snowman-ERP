package tech.buildrun.Snowman.DataLoader;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import tech.buildrun.Snowman.entity.User;
import tech.buildrun.Snowman.repository.UserRepository;

@Component
public class UserDataInitializer implements CommandLineRunner {

    private final UserRepository userRepository;
    private static final Logger logger = LoggerFactory.getLogger(UserDataInitializer.class);

    public UserDataInitializer(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Transactional
    @Override
    @EventListener(ApplicationReadyEvent.class)
    public void run(String... args) throws Exception {
        if (userRepository.count() == 0) {
            try {
                logger.info("No users found. Initializing user data...");

                for (User user : new User[]{
                        new User(UUID.randomUUID(), "user1", "user1@example.com", "password1", null, null, 0L),
                        new User(UUID.randomUUID(), "user2", "user2@example.com", "password2", null, null, 0L),
                        new User(UUID.randomUUID(), "user3", "user3@example.com", "password3", null, null, 0L),
                        new User(UUID.randomUUID(), "user4", "user4@example.com", "password4", null, null, 0L),
                        new User(UUID.randomUUID(), "user5", "user5@example.com", "password5", null, null, 0L),
                        new User(UUID.randomUUID(), "user6", "user6@example.com", "password6", null, null, 0L),
                        new User(UUID.randomUUID(), "user7", "user7@example.com", "password7", null, null, 0L),
                        new User(UUID.randomUUID(), "user8", "user8@example.com", "password8", null, null, 0L),
                        new User(UUID.randomUUID(), "user9", "user9@example.com", "password9", null, null, 0L),
                        new User(UUID.randomUUID(), "user10", "user10@example.com", "password10", null, null, 0L)
                }) {
                    userRepository.findById(user.getUserId()).ifPresentOrElse(
                        existingUser -> {
                            if (!existingUser.getVersion().equals(user.getVersion())) {
                                logger.warn("Version mismatch for User with ID " + user.getUserId() + ". Expected: " + existingUser.getVersion() + ", Found: " + user.getVersion() + ". Skipping initialization.");
                            } else {
                                logger.info("User with ID " + user.getUserId() + " already exists with matching version. Skipping initialization.");
                            }
                        },
                        () -> {
                            user.setVersion(0L); // Explicitly set version to 0L for new entities
                            userRepository.saveAndFlush(user); // Use saveAndFlush to ensure immediate persistence
                        }
                    );
                }

                logger.info("User data initialized successfully.");

            } catch (DataAccessException e) {
                logger.error("Error while inserting user data: " + e.getMessage(), e);
                throw new RuntimeException("Error while initializing user data", e);
            } catch (Exception e) {
                logger.error("Unexpected error during user data initialization: " + e.getMessage(), e);
                throw new RuntimeException("Unexpected error during initialization", e);
            }
        }
    }
}