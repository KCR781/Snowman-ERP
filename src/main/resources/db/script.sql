-- Removido comandos MySQL incompatíveis com H2
DROP TABLE IF EXISTS tb_user_audit;
DROP TABLE IF EXISTS tb_users;
DROP TABLE IF EXISTS tb_managers;
DROP TABLE IF EXISTS tb_pessoa_audit;
DROP TABLE IF EXISTS tb_pessoas;

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
  creation_timestamp DATETIME,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  update_timestamp DATETIME,
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
  tipo VARCHAR(20) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ===============================
-- PROCEDURE: Contar usuários por gerente
-- ===============================

CREATE VIEW vw_count_users_by_manager AS
SELECT m.username AS gerente, COUNT(u.user_id) AS total_usuarios
FROM tb_managers m
LEFT JOIN tb_users u ON m.manager_id = u.manager_id
GROUP BY m.username;

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
-- TRIGGERS DE AUDITORIA 
-- ===============================

CREATE TRIGGER trg_insert_pessoa_audit
AFTER INSERT ON tb_pessoas
FOR EACH ROW
BEGIN ATOMIC
  INSERT INTO tb_pessoa_audit (pessoa_id, tipo, acao, timestamp)
  VALUES (NEW.pessoa_id, NEW.tipo, 'INSERT', CURRENT_TIMESTAMP());
END;

CREATE TRIGGER trg_update_pessoa_audit
AFTER UPDATE ON tb_pessoas
FOR EACH ROW
BEGIN ATOMIC
  INSERT INTO tb_pessoa_audit (pessoa_id, tipo, acao, timestamp)
  VALUES (NEW.pessoa_id, NEW.tipo, 'UPDATE', CURRENT_TIMESTAMP());
END;

CREATE TRIGGER trg_delete_pessoa_audit
AFTER DELETE ON tb_pessoas
FOR EACH ROW
BEGIN ATOMIC
  INSERT INTO tb_pessoa_audit (pessoa_id, tipo, acao, timestamp)
  VALUES (OLD.pessoa_id, OLD.tipo, 'DELETE', CURRENT_TIMESTAMP());
END;
