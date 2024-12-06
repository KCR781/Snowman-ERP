package tech.buildrun.Snowman.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import tech.buildrun.Snowman.entity.Manager;
import tech.buildrun.Snowman.entity.User;
import tech.buildrun.Snowman.service.ManagerService;

import java.util.UUID;

@RestController
@RequestMapping("/v1/managers")
public class ManagerController {

    private final ManagerService managerService;

    public ManagerController(ManagerService managerService) {
        this.managerService = managerService;
    }

    @PostMapping
    public ResponseEntity<UUID> createManager(@RequestBody Manager manager) {
        UUID managerId = managerService.createManager(manager);
        return ResponseEntity.ok(managerId);
    }

    @DeleteMapping("/users/{userId}")
    public ResponseEntity<Void> deleteUser(@PathVariable UUID userId) {
        managerService.deleteUserById(userId);
        return ResponseEntity.noContent().build();
    }

    @PutMapping("/users/{userId}")
    public ResponseEntity<Void> updateUser(@PathVariable UUID userId, @RequestBody User updatedUser) {
        managerService.updateUser(userId, updatedUser);
        return ResponseEntity.noContent().build();
    }
}
