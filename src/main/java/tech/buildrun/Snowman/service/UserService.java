package tech.buildrun.Snowman.service;
import java.time.Instant;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.dao.OptimisticLockingFailureException;
import org.springframework.stereotype.Service;

import tech.buildrun.Snowman.controller.CreateUserDto;
import tech.buildrun.Snowman.controller.UpdateUserDto;
import tech.buildrun.Snowman.entity.User;
import tech.buildrun.Snowman.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public UUID createUser(CreateUserDto createUserDto) {

        // DTO -> ENTITY
        var entity = new User(
                UUID.randomUUID(),
                createUserDto.username(),
                createUserDto.email(),
                createUserDto.password(),
                Instant.now(),
                Instant.now(),
                0L); // Explicitly set version to 0L

        var userSaved = userRepository.save(entity);

        return userSaved.getUserId();
    }

    public Optional<User> getUserById(String userId) {

        return userRepository.findById(UUID.fromString(userId));
    }

    public List<User> listUsers() {
        return userRepository.findAll();
    }

    public void updateUserById(String userId,
                               UpdateUserDto updateUserDto) {

        var id = UUID.fromString(userId);
        var user = userRepository.findById(id).orElseThrow();

        if (!user.getVersion().equals(updateUserDto.version())) {
            throw new OptimisticLockingFailureException("Version mismatch detected for user " + userId);
        }

        user.setUsername(updateUserDto.username());
        user.setPassword(updateUserDto.password());
        userRepository.save(user);
    }

    public void deleteById(String userId) {

        var id = UUID.fromString(userId);

        var userExists = userRepository.existsById(id);

        if (userExists) {
            userRepository.deleteById(id);
        }
    }
}
