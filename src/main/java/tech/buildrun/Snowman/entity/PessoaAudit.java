package tech.buildrun.Snowman.entity;

import java.time.Instant;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_pessoa_audit")
public class PessoaAudit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long audit_id;

    private String pessoa_id;
    private String tipo;
    private String acao;
    private Instant timestamp;

    // Getters e setters
    public Long getAuditId() { return audit_id; }
    public void setAuditId(Long audit_id) { this.audit_id = audit_id; }

    public String getPessoaId() { return pessoa_id; }
    public void setPessoaId(String pessoa_id) { this.pessoa_id = pessoa_id; }

    public String getTipo() { return tipo; }
    public void setTipo(String tipo) { this.tipo = tipo; }

    public String getAcao() { return acao; }
    public void setAcao(String acao) { this.acao = acao; }

    public Instant getTimestamp() { return timestamp; }
    public void setTimestamp(Instant timestamp) { this.timestamp = timestamp; }
}
