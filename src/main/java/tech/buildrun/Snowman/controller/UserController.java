package tech.buildrun.Snowman.controller;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import tech.buildrun.Snowman.DTOs.CreateUserDto;
import tech.buildrun.Snowman.DTOs.UpdateUserDto;
import tech.buildrun.Snowman.entity.Manager;
import tech.buildrun.Snowman.entity.User;
import tech.buildrun.Snowman.repository.UserRepository;
import tech.buildrun.Snowman.service.ManagerService;
import tech.buildrun.Snowman.service.UserService;

@RestController
@RequestMapping("/v1/users")
public class UserController {

    private final UserService userService;
    private final ManagerService managerService;
    private final UserRepository userRepository;

    public UserController(UserService userService, ManagerService managerService, UserRepository userRepository) {
        this.userService = userService;
        this.managerService = managerService;
        this.userRepository = userRepository;
    }

    @PostMapping
    public ResponseEntity<UUID> createUser(@RequestBody CreateUserDto dto) {
        UUID managerId = dto.managerId();
        Manager manager = managerService.findById(managerId);
        if (manager == null) {
            return ResponseEntity.badRequest().build();
        }
        UUID createdUserId = userService.createUser(dto, manager);
        return ResponseEntity.ok(createdUserId);
    }

    @GetMapping("/{userId}")
    public ResponseEntity<User> getUserById(@PathVariable UUID userId) {
        Optional<User> user = userService.getUserById(userId);

        if (user.isPresent()) {
            return ResponseEntity.ok(user.get());
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping
    public ResponseEntity<List<User>> listUsers() {
        List<User> users = userService.listUsers();

        return ResponseEntity.ok(users);
    }

    @PutMapping("/{userId}")
    public ResponseEntity<User> updateUser(
        @PathVariable UUID userId, @RequestBody UpdateUserDto dto) {
        Optional<User> userOpt = userRepository.findById(userId);
        if (userOpt.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        User user = userOpt.get();
        user.setUsername(dto.username());
        if (dto.password() != null) {
            user.setPassword(dto.password());
        }
        return ResponseEntity.ok(userRepository.save(user));
    }
    @DeleteMapping("/{userId}")
    public ResponseEntity<Void> deleteById(@PathVariable UUID userId) {
        userService.deleteById(userId);
        return ResponseEntity.noContent().build();
    }
}