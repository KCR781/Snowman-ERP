# Sistema Snowman - Gestão de Usuários e Administração

Este projeto é um sistema web desenvolvido para gerenciar usuários e administradores (managers). Foi implementado com Spring Boot no backend e HTML/CSS/JavaScript no frontend, oferecendo funcionalidades básicas de CRUD (Create, Read, Update, Delete).
## Funcionalidades

- **Gestão de Usuários**:
  - Cadastro, edição e exclusão de usuários.
  - Listagem detalhada de todos os usuários registrados.
  - Visualização individual de informações do usuário.

- **Gestão de Administradores (Managers)**:
  - Cadastro e gerenciamento de administradores.
  - Controle de permissões para ações específicas, como deletar ou atualizar usuários.

  - **Rastreamento de Ações**:
        Registro de ações executadas por administradores em usuários, como atualizações e exclusões.

  - **Banco de Dados**:
        Modelagem relacional implementada com MySQL.
        Relacionamento entre administradores e usuários para ações registradas.

  - **Responsividade e Usabilidade**:
    
    - Interface web funcional e amigável para interagir com o sistema.
    - Scripts SQL para inserção, atualização e exclusão de registros.

## Tecnologias Utilizadas

Backend:
    
  - **Spring Boot**: Framework para construção de APIs REST.
  - **Hibernate/JPA**: Persistência de dados e mapeamento objeto-relacional.
  - **MySQL**: Banco de dados relacional.

Frontend:
  - **HTML/CSS/JavaScript**: Construção da interface do usuário.
  - **Fetch API**: Comunicação assíncrona com o backend.

Docker:
  - **Contêiner para o banco de dados MySQL**, configurado via Docker Compose.

Git:
  - **Controle de versões** e colaboração no desenvolvimento.

## Requisitos

  - **JDK 21** ou superior.
  - **Docker** (para o banco de dados).
  - **Maven** (para gerenciamento do projeto backend).

## Como Rodar o Projeto

### 1. Clonar o Repositório

Clone o repositório para sua máquina local:

```bash
git clone https://github.com/KCR781/Snowman-ERP
```

```bash
cd Snowman-ERP
```

### 2. Configurar o Banco de Dados

Certifique-se de que o Docker está instalado e ativo. Configure o banco de dados:

```bash
docker-compose up -d
```

### 3. Rodar o Backend

Acesse o diretório backend e execute o projeto Spring Boot:

```bash
mvn spring-boot:run
```

### 4. Abrir o Frontend

Abra o arquivo index.html localizado na pasta \Snowman-ERP2\src\main\resources\static diretamente no navegador ou hospede em um servidor local.
Estrutura do Banco de Dados

```bash
start http://localhost:8080/index.html
```

    tb_users: Gerencia os dados de usuários.
    tb_managers: Gerencia os administradores do sistema.
    tb_manager_user_actions: Registra as ações realizadas pelos administradores nos usuários.
