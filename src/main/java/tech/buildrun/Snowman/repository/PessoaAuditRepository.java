package tech.buildrun.Snowman.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import tech.buildrun.Snowman.entity.PessoaAudit;

public interface PessoaAuditRepository extends JpaRepository<PessoaAudit, Long> {
}
