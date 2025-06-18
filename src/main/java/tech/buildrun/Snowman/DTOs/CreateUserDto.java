package tech.buildrun.Snowman.DTOs;

import java.util.UUID;

public record CreateUserDto(String username, String email, String password, UUID managerId) {
}