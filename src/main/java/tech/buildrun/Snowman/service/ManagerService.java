package tech.buildrun.Snowman.service;

import org.springframework.stereotype.Service;
import tech.buildrun.Snowman.entity.Manager;
import tech.buildrun.Snowman.entity.User;
import tech.buildrun.Snowman.repository.ManagerRepository;
import tech.buildrun.Snowman.repository.UserRepository;

import java.util.UUID;

@Service
public class ManagerService {

    private final ManagerRepository managerRepository;
    private final UserRepository userRepository;

    public ManagerService(ManagerRepository managerRepository, UserRepository userRepository) {
        this.managerRepository = managerRepository;
        this.userRepository = userRepository;
    }

    public UUID createManager(Manager manager) {
        var savedManager = managerRepository.save(manager);
        return savedManager.getManagerId();
    }

    public void deleteUserById(UUID userId) {
        if (userRepository.existsById(userId)) {
            userRepository.deleteById(userId);
        }
    }

    public void updateUser(UUID userId, User updatedUser) {
        var user = userRepository.findById(userId).orElseThrow();
        user.setUsername(updatedUser.getUsername());
        user.setPassword(updatedUser.getPassword());
        userRepository.save(user);
    }
}
