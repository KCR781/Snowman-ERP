package tech.buildrun.Snowman.DataLoader;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import tech.buildrun.Snowman.entity.User;
import tech.buildrun.Snowman.repository.UserRepository;

import java.util.UUID;

@Component
public class UserDataInitializer implements CommandLineRunner {

    private final UserRepository userRepository;

    public UserDataInitializer(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public void run(String... args) throws Exception {
        if (userRepository.count() == 0) {
            // Inserindo 10 usuários
            userRepository.save(new User(UUID.randomUUID(), "user1", "user1@example.com", "password1", null, null));
            userRepository.save(new User(UUID.randomUUID(), "user2", "user2@example.com", "password2", null, null));
            userRepository.save(new User(UUID.randomUUID(), "user3", "user3@example.com", "password3", null, null));
            userRepository.save(new User(UUID.randomUUID(), "user4", "user4@example.com", "password4", null, null));
            userRepository.save(new User(UUID.randomUUID(), "user5", "user5@example.com", "password5", null, null));
            userRepository.save(new User(UUID.randomUUID(), "user6", "user6@example.com", "password6", null, null));
            userRepository.save(new User(UUID.randomUUID(), "user7", "user7@example.com", "password7", null, null));
            userRepository.save(new User(UUID.randomUUID(), "user8", "user8@example.com", "password8", null, null));
            userRepository.save(new User(UUID.randomUUID(), "user9", "user9@example.com", "password9", null, null));
            userRepository.save(new User(UUID.randomUUID(), "user10", "user10@example.com", "password10", null, null));
        }
    }
}
