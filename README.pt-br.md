# Snowman System - Gerenciamento de Usuários e Administradores

> 🇺🇸 Leia este documento em [English](README.md)

Este projeto é uma aplicação web desenvolvida para gerenciar usuários e administradores (gerentes). Foi implementado usando Spring Boot para o backend e HTML/CSS/JavaScript para o frontend, oferecendo funcionalidades básicas de CRUD (Criar, Ler, Atualizar, Excluir).

## Funcionalidades

- **Gerenciamento de Usuários**:
  - Registrar, editar e excluir usuários.
  - Listagem detalhada de todos os usuários registrados.
  - Visualizar informações individuais de usuários.

- **Gerenciamento de Administradores (Gerentes)**:
  - Registrar e gerenciar administradores.
  - Controle de permissões para ações específicas, como excluir ou atualizar usuários.

- **Rastreamento de Ações**:
  - Logs de ações realizadas por administradores em usuários, como atualizações e exclusões.

- **Banco de Dados**:
  - Modelagem relacional implementada com MySQL.
  - Relacionamentos entre administradores e usuários para rastreamento de ações.

- **Responsividade e Usabilidade**:
  - Interface web funcional e amigável para interagir com o sistema.
  - Scripts SQL para inserir, atualizar e excluir registros.

## Tecnologias Utilizadas

**Backend**:

- **Spring Boot**: Framework para construção de APIs REST.
- **Hibernate/JPA**: Persistência de dados e mapeamento objeto-relacional.
- **MySQL**: Banco de dados relacional.

**Frontend**:

- **HTML/CSS/JavaScript**: Construção da interface do usuário.
- **Fetch API**: Comunicação assíncrona com o backend.

**Docker**:

- **Contêiner para o banco de dados MySQL**, configurado via Docker Compose.

**Git**:

- **Controle de versões** e colaboração no desenvolvimento.

## Requisitos

- **JDK 21** ou superior.
- **Docker** (para o banco de dados).
- **Maven** (para gerenciamento do projeto backend).

## Como Executar o Projeto

### 1. Clone o Repositório

Clone o repositório para sua máquina local:

```bash
git clone https://github.com/KCR781/Snowman-ERP
```

```bash
cd Snowman-ERP
```

### 2. Configure o Banco de Dados

Certifique-se de que o Docker está instalado e em execução. Em seguida, configure o banco de dados:

```bash
docker-compose up -d
```

### 3. Compile o Backend

Empacote a aplicação como um JAR executável:

```bash
mvn clean package
```

### 4. Execute o Aplicativo em uma Nova Janela

Para executar o aplicativo em uma nova janela do PowerShell enquanto mantém o terminal atual livre, use o seguinte comando:

```powershell
Start-Process powershell -ArgumentList "java -jar target/Snowman-0.0.1-SNAPSHOT.jar"
```

Isso abrirá uma nova janela do PowerShell e executará o aplicativo lá. Para parar o aplicativo, feche a nova janela.

### 5. Abra o Frontend

Abra o arquivo `index.html` localizado em `\Snowman-ERP\src\main\resources\static` em um servidor local via bash:

```bash
start http://localhost:8080/index.html
```
