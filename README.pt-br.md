# Snowman System - Gerenciamento de Usuários e Administradores

> 🇺🇸 Read this document in [English](README.md)

Este projeto é uma aplicação web para gerenciar usuários e administradores (gerentes), implementado com Spring Boot no backend e HTML/CSS/JavaScript no frontend, oferecendo funcionalidades básicas de CRUD (Criar, Ler, Atualizar, Deletar).

## Funcionalidades

- **Gerenciamento de Usuários**:
  - Cadastrar, editar e excluir usuários.
  - Listagem detalhada de todos os usuários cadastrados.
  - Visualizar informações individuais de cada usuário.
- **Gerenciamento de Administradores (Gerentes)**:
  - Cadastrar e gerenciar administradores.
  - Controle de permissões para ações específicas como exclusão ou atualização de usuários.
- **Rastreamento de Ações**:
  - Logs das ações realizadas pelos administradores sobre os usuários, como atualizações e exclusões.
- **Banco de Dados**:
  - Modelagem relacional com MySQL.
  - Relacionamentos entre administradores e usuários para rastreamento de ações.
- **Responsividade e Usabilidade**:
  - Interface web funcional e amigável.
  - Scripts SQL para inserção, atualização e exclusão de registros.

## Tecnologias Utilizadas

**Backend**:
- **Spring Boot**: Framework para construção de APIs REST.
- **Hibernate/JPA**: Persistência de dados e mapeamento objeto-relacional.
- **MySQL**: Banco de dados relacional.

**Frontend**:
- **HTML/CSS/JavaScript**: Construção da interface do usuário.
- **Fetch API**: Comunicação assíncrona com o backend.

**Git**:
- **Controle de versão** e desenvolvimento colaborativo.

## Requisitos
- **JDK 21** ou superior
- **MySQL** (rodando localmente)
- **Maven** (para gerenciamento do backend)

## Como Executar o Projeto

**Pressupostos:**
- Você está utilizando o JDK 21
- Está usando o CMD ou PowerShell como terminal
- Possui o MySQL rodando localmente
- Os comandos do Git estão adicionados ao seu PATH

### 1. Clone o Repositório

Clone o repositório para sua máquina local:

```bash
git clone https://github.com/KCR781/Snowman-ERP
```
```bash
cd Snowman-ERP
```

### 2. Configure o Banco de Dados

Certifique-se de que o MySQL está instalado e em execução localmente. Crie o banco de dados `snowman_db` e execute os seguintes scripts na ordem:

1. `docs/script.sql` (criação das tabelas e procedures)
2. `docs/Mock data.sql` (inserção de dados iniciais)

### 3. Compile o Backend

Empacote a aplicação como um JAR executável:

```bash
mvn clean package
```

### 4. Execute o Aplicativo em uma Nova Janela

Para executar o aplicativo em uma nova janela do PowerShell enquanto mantém o terminal atual livre, use o comando:

```powershell
start "SnowmanApp" cmd /k java -jar target\Snowman-0.0.1-SNAPSHOT.jar > output.log
```

### 5. Abra o Frontend

Abra o arquivo `frontend/index.html` no seu navegador ou utilize um servidor local.
