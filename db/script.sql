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
-- CRIPTOGRAFIA BÁSICA DAS SENHAS (usando SHA-256)
-- ===============================
UPDATE tb_managers SET password = SHA2(password, 256);
UPDATE tb_users SET password = SHA2(password, 256);

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


DELETE FROM tb_managers;

DELETE FROM tb_users;
DELETE FROM tb_user_audit;

SELECT * FROM tb_users;
SELECT * FROM tb_managers;
describe tb_managers;
describe tb_users;

SELECT * FROM tb_user_audit ORDER BY created_at DESC LIMIT 10;


