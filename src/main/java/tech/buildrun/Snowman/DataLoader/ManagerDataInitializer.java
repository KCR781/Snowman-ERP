package tech.buildrun.Snowman.DataLoader;

import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import tech.buildrun.Snowman.entity.Manager;
import tech.buildrun.Snowman.repository.ManagerRepository;

import java.util.UUID;

@Component
public class ManagerDataInitializer implements CommandLineRunner {

    private final ManagerRepository managerRepository;

    public ManagerDataInitializer(ManagerRepository managerRepository) {
        this.managerRepository = managerRepository;
    }

    @Override
    public void run(String... args) throws Exception {
        if (managerRepository.count() == 0) {
            managerRepository.save(new Manager(UUID.randomUUID(), "manager1", "manager1@example.com", "password1"));
            managerRepository.save(new Manager(UUID.randomUUID(), "manager2", "manager2@example.com", "password2"));
            managerRepository.save(new Manager(UUID.randomUUID(), "manager3", "manager3@example.com", "password3"));
            managerRepository.save(new Manager(UUID.randomUUID(), "manager4", "manager4@example.com", "password4"));
            managerRepository.save(new Manager(UUID.randomUUID(), "manager5", "manager5@example.com", "password5"));
            managerRepository.save(new Manager(UUID.randomUUID(), "manager6", "manager6@example.com", "password6"));
            managerRepository.save(new Manager(UUID.randomUUID(), "manager7", "manager7@example.com", "password7"));
            managerRepository.save(new Manager(UUID.randomUUID(), "manager8", "manager8@example.com", "password8"));
            managerRepository.save(new Manager(UUID.randomUUID(), "manager9", "manager9@example.com", "password9"));
            managerRepository.save(new Manager(UUID.randomUUID(), "manager10", "manager10@example.com", "password10"));
        }
    }
}
