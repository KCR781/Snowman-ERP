package tech.buildrun.Snowman.audit;

import java.time.Instant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import jakarta.persistence.PostPersist;
import jakarta.persistence.PostRemove;
import jakarta.persistence.PostUpdate;
import tech.buildrun.Snowman.entity.PessoaAudit;
import tech.buildrun.Snowman.repository.PessoaAuditRepository;

@Component
public class PessoaAuditListener {

    private static PessoaAuditRepository pessoaAuditRepository;

    @Autowired
    public void setPessoaAuditRepository(PessoaAuditRepository repo) {
        pessoaAuditRepository = repo;
    }

    @PostPersist
    public void postPersist(Object entity) {
        saveAudit(entity, "INSERT");
    }

    @PostUpdate
    public void postUpdate(Object entity) {
        saveAudit(entity, "UPDATE");
    }

    @PostRemove
    public void postRemove(Object entity) {
        saveAudit(entity, "DELETE");
    }

    private void saveAudit(Object entity, String action) {
        // Supondo que exista uma entidade Pessoa com getPessoaId() e getTipo()
        try {
            Class<?> clazz = entity.getClass();
            Object pessoaId = clazz.getMethod("getPessoaId").invoke(entity);
            Object tipo = clazz.getMethod("getTipo").invoke(entity);
            PessoaAudit audit = new PessoaAudit();
            audit.setPessoaId(pessoaId != null ? pessoaId.toString() : null);
            audit.setTipo(tipo != null ? tipo.toString() : null);
            audit.setAcao(action);
            audit.setTimestamp(Instant.now());
            pessoaAuditRepository.save(audit);
        } catch (Exception e) {
        }
    }
}
