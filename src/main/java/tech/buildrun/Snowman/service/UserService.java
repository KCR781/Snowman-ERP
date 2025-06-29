package tech.buildrun.Snowman.service;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.dao.OptimisticLockingFailureException;
import org.springframework.stereotype.Service;

import tech.buildrun.Snowman.DTOs.CreateUserDto;
import tech.buildrun.Snowman.DTOs.UpdateUserDto;
import tech.buildrun.Snowman.entity.Manager;
import tech.buildrun.Snowman.entity.User;
import tech.buildrun.Snowman.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public UUID createUser(CreateUserDto dto, Manager manager) {


        var entity = new User(
            dto.username(),
            dto.email(),
            dto.password(),
            manager
        );

        var userSaved = userRepository.save(entity);
        return userSaved.getUserId();
    }

    public Optional<User> getUserById(UUID userId) {

        return userRepository.findById(userId);
    }

    public List<User> listUsers() {
        return userRepository.findAll();
    }

    public void updateUserById(UUID userId,
                               UpdateUserDto updateUserDto) {

        var user = userRepository.findById(userId).orElseThrow();

        if (!user.getVersion().equals(updateUserDto.version())) {
            throw new OptimisticLockingFailureException("Version mismatch detected for user " + userId);
        }

        user.setUsername(updateUserDto.username());
        user.setPassword(updateUserDto.password());
        userRepository.save(user);
    }

    public void deleteById(UUID userId) {

        var userExists = userRepository.existsById(userId);

        if (userExists) {
            userRepository.deleteById(userId);
        }
    }
}
