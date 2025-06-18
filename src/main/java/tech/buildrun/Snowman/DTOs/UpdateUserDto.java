package tech.buildrun.Snowman.DTOs;
import java.util.UUID;

public record UpdateUserDto(String username, String email, String password, UUID managerId, Long version) {
}