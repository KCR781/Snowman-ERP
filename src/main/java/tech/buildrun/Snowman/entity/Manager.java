package tech.buildrun.Snowman.entity;
import jakarta.persistence.*;
import java.util.UUID;
@Entity
@Table(name = "tb_managers")
public class Manager {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID managerId;
    @Column(name = "username")
    private String username;
    @Column(name = "email")
    private String email;
    @Column(name = "password")
    private String password;
    public Manager() {
    }
    public Manager(UUID managerId, String username, String email, String password) {
        this.managerId = managerId;
        this.username = username;
        this.email = email;
        this.password = password;
    }
    public UUID getManagerId() {
        return managerId;}
    public void setManagerId(UUID managerId) {
        this.managerId = managerId;}
    public String getUsername() {
        return username;}
    public void setUsername(String username) {
        this.username = username;}
    public String getEmail() {
        return email;}
    public void setEmail(String email) {
        this.email = email;}
    public String getPassword() {
        return password;}
    public void setPassword(String password) {
        this.password = password;
    }
}
