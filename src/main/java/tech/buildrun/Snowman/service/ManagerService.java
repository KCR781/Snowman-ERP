package tech.buildrun.Snowman.service;

import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jakarta.persistence.EntityNotFoundException;
import tech.buildrun.Snowman.DTOs.CreateUserDto;
import tech.buildrun.Snowman.DTOs.UpdateUserDto;
import tech.buildrun.Snowman.entity.Manager;
import tech.buildrun.Snowman.entity.User;
import tech.buildrun.Snowman.repository.ManagerRepository;
import tech.buildrun.Snowman.repository.UserRepository;

@Service
public class ManagerService {

    private final ManagerRepository managerRepository;
    private final UserRepository userRepository;

    public ManagerService(ManagerRepository managerRepository, UserRepository userRepository) {
        this.managerRepository = managerRepository;
        this.userRepository = userRepository;
    }

    public UUID createManager(Manager manager) {
        manager.setVersion(0L); // Explicitly set version to 0L
        var savedManager = managerRepository.save(manager);
        return savedManager.getManagerId();
    }

    public User createUser(UUID managerId, CreateUserDto dto) {
    Manager manager = managerRepository.findById(managerId)
        .orElseThrow(() -> new EntityNotFoundException("Manager não encontrado"));
    
    User user = new User(dto.username(), dto.email(), dto.password(), manager);
    return userRepository.save(user);
}


    public void deleteUserById(UUID userId) {
        if (userRepository.existsById(userId)) {
            userRepository.deleteById(userId);
        }
    }

    @Transactional
    public User updateUser(UUID managerId, UUID userId, UpdateUserDto dto) {
        @SuppressWarnings("unused")
        Manager manager = managerRepository.findById(managerId)
            .orElseThrow(() -> new EntityNotFoundException("Manager não encontrado"));

        User user = userRepository.findById(userId)
            .orElseThrow(() -> new EntityNotFoundException("User não encontrado para id " + userId));

        if (!user.getManager().getManagerId().equals(managerId)) {
            throw new IllegalArgumentException("User não pertence ao manager com id " + managerId);
        }

        user.setUsername(dto.username());
        user.setEmail(dto.email());
        user.setPassword(dto.password());
        
        return userRepository.save(user);
    }

public Manager findById(UUID managerId) {
    return managerRepository.findById(managerId)
        .orElseThrow(() -> new EntityNotFoundException("Manager não encontrado para id " + managerId));
}
}