package tech.buildrun.Snowman.controller;

import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.persistence.EntityNotFoundException;
import tech.buildrun.Snowman.DTOs.CreateUserDto;
import tech.buildrun.Snowman.entity.Manager;
import tech.buildrun.Snowman.entity.User;
import tech.buildrun.Snowman.service.ManagerService;

@RestController
@RequestMapping("/v1/managers")
public class ManagerController {

    private final ManagerService managerService;

    public ManagerController(ManagerService managerService) {
        this.managerService = managerService;
    }

    @GetMapping("/manager/{id}")
public ResponseEntity<Manager> getManager(@PathVariable String id) {
    UUID managerId = UUID.fromString(id);
    Manager manager = managerService.findById(managerId);
    if (manager != null) {
        return ResponseEntity.ok(manager);
    } else {
        throw new EntityNotFoundException("Manager não encontrado");
    }
}

    @PostMapping("/{managerId}/users")
    public ResponseEntity<User> createUser(@PathVariable UUID managerId, @RequestBody CreateUserDto dto) {
        User user = managerService.createUser(managerId, dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(user);
    }
    

    @DeleteMapping("/users/{userId}")
    public ResponseEntity<Void> deleteUser(@PathVariable UUID userId) {
        managerService.deleteUserById(userId);
        return ResponseEntity.noContent().build();
    }
    }
    