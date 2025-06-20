
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS tb_user_audit;
DROP TABLE IF EXISTS tb_users;
DROP TABLE IF EXISTS tb_managers;
DROP TABLE IF EXISTS tb_pessoa_audit;
DROP TABLE IF EXISTS tb_pessoas;

SET FOREIGN_KEY_CHECKS = 1;

-- ===============================
-- TABELA DE GERENTES
-- ===============================
CREATE TABLE tb_managers (
  manager_id CHAR(36) PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  username VARCHAR(255) NOT NULL,
  version BIGINT DEFAULT 0
);

-- ===============================
-- TABELA DE USUÁRIOS
-- ===============================
CREATE TABLE tb_users (
  user_id CHAR(36) PRIMARY KEY,
  creation_timestamp DATETIME(6),
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  update_timestamp DATETIME(6),
  username VARCHAR(255) NOT NULL,
  version BIGINT DEFAULT 0,
  manager_id CHAR(36),
  FOREIGN KEY (manager_id) REFERENCES tb_managers(manager_id)
);

-- ===============================
-- TABELA BASE: PESSOAS
-- ===============================
CREATE TABLE tb_pessoas (
  pessoa_id CHAR(36) PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  tipo ENUM('USER', 'MANAGER') NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);



-- ===============================
-- PROCEDURE: Contar usuários por gerente
-- ===============================
DELIMITER //
CREATE PROCEDURE sp_count_users_by_manager()
BEGIN
  SELECT m.username AS gerente, COUNT(u.user_id) AS total_usuarios
  FROM tb_managers m
  LEFT JOIN tb_users u ON m.manager_id = u.manager_id
  GROUP BY m.username;
END;
//
DELIMITER ;

CALL sp_count_users_by_manager();

-- ===============================
-- TABELA DE AUDITORIA DE USUÁRIOS
-- ===============================
CREATE TABLE tb_user_audit (
  audit_id INT AUTO_INCREMENT PRIMARY KEY,
  user_email VARCHAR(255),
  user_id CHAR(36),
  action_type VARCHAR(50) DEFAULT 'INSERT',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ===============================
-- TABELA DE AUDITORIA DE PESSOAS
-- ===============================
CREATE TABLE tb_pessoa_audit (
  audit_id INT AUTO_INCREMENT PRIMARY KEY,
  pessoa_id CHAR(36),
  tipo VARCHAR(20),
  acao VARCHAR(20),
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ===============================
-- TRIGGER: Auditoria de inserção
-- ===============================
DELIMITER //
CREATE TRIGGER trg_user_insert_audit
AFTER INSERT ON tb_users
FOR EACH ROW
BEGIN
  INSERT INTO tb_user_audit(user_email, user_id, action_type)
  VALUES (NEW.email, NEW.user_id, 'INSERT');
END;

CREATE TRIGGER trg_insert_pessoa
AFTER INSERT ON tb_pessoas
FOR EACH ROW
BEGIN
  INSERT INTO tb_pessoa_audit (pessoa_id, tipo, acao)
  VALUES (NEW.pessoa_id, NEW.tipo, 'INSERT');
END;

-- ===============================
-- TRIGGER: Auditoria de atualização
-- ===============================
CREATE TRIGGER trg_user_update_audit
AFTER UPDATE ON tb_users
FOR EACH ROW
BEGIN
  INSERT INTO tb_user_audit(user_email, user_id, action_type)
  VALUES (NEW.email, NEW.user_id, 'UPDATE');
END;

-- ===============================
-- TRIGGER: Auditoria de exclusão
-- ===============================
CREATE TRIGGER trg_user_delete_audit
AFTER DELETE ON tb_users
FOR EACH ROW
BEGIN
  INSERT INTO tb_user_audit(user_email, user_id, action_type)
  VALUES (OLD.email, OLD.user_id, 'DELETE');
END;
//
DELIMITER ;
