
# Snowman-ERP — Sistema de Gerenciamento de Usuários e Administradores

> 🇺🇸 Read this document in [English](README.en-us.md)

Snowman-ERP é uma aplicação web para gerenciamento de usuários e administradores (gerentes), desenvolvida com **Spring Boot** no backend e **HTML/CSS/JavaScript** no frontend. O sistema oferece funcionalidades completas de CRUD, controle de permissões, rastreamento de ações e interface amigável.

## Funcionalidades Principais

- **Gerenciamento de Usuários:**
  - Cadastrar, editar, listar e excluir usuários.
  - Visualizar detalhes individuais de cada usuário.
- **Gerenciamento de Administradores (Gerentes):**
  - Cadastrar, editar e excluir administradores.
  - Gerenciar permissões para ações sensíveis (exclusão/atualização de usuários).
- **Rastreamento de Ações:**
  - Logs detalhados das ações dos administradores sobre os usuários (atualizações, exclusões etc).
- **Banco de Dados:**
  - Modelagem relacional (MySQL ou H2 para testes).
  - Relacionamento entre administradores e usuários para rastreabilidade.
- **Interface Web Responsiva:**
  - Frontend simples e funcional para interação com o sistema.
  - Scripts SQL para criação e popularização do banco.

## Endpoints REST (Principais)

Veja o arquivo `leiame.txt` para exemplos detalhados de uso dos endpoints.

- **Usuários:**
  - `POST /v1/users` — Cria usuário (com managerId)
  - `GET /v1/users` — Lista todos os usuários
  - `GET /v1/users/{userId}` — Busca usuário por ID
  - `PUT /v1/users/{userId}` — Atualiza usuário
  - `DELETE /v1/users/{userId}` — Remove usuário
- **Gerentes:**
  - `GET /v1/managers/manager/{id}` — Busca gerente por ID
  - `POST /v1/managers/{managerId}/users` — Cria usuário vinculado ao gerente
  - `DELETE /v1/managers/users/{userId}` — Remove usuário via gerente

## Tecnologias Utilizadas

**Backend:**
- Spring Boot (REST API)
- Hibernate/JPA
- MySQL (produção) / H2 (testes)

**Frontend:**
- HTML, CSS, JavaScript (Fetch API)

**Outros:**
- Git (controle de versão)
- Maven (gerenciamento de dependências)

## Requisitos
- JDK 21 ou superior
- MySQL rodando localmente (ou H2 para testes)
- Maven

## Como Executar o Projeto

**Pré-requisitos:**
- JDK 21 instalado
- MySQL em execução local (ou use H2 para testes)
- Git e Maven configurados no PATH

### 1. Clone o Repositório

```bash
git clone https://github.com/KCR781/Snowman-ERP
cd Snowman-ERP
```

### 2. Execute o Aplicativo

Você pode executar o aplicativo facilmente utilizando o script `iniciar.bat` já incluso no projeto. Este script:
- Acessa a pasta `target`
- Executa o JAR compilado (`Snowman-0.0.1-SNAPSHOT.jar`)
- Aguarda alguns segundos
- Abre automaticamente o sistema no navegador (`http://localhost:8080/`)
- Abre o console do H2 (`http://localhost:8080/h2-console`)

**Para rodar:**

```bat
iniciar.bat
```

> Alternativamente, você pode executar manualmente o JAR conforme instruções anteriores, mas o script facilita o processo.

### 3. Acesse o Frontend

O frontend será aberto automaticamente pelo script, mas você também pode acessar manualmente:
- `src/main/resources/static/index.html` (abrindo no navegador)
- Ou utilize um servidor local de sua preferência

---

**Observações:**
- O projeto não depende mais de Docker (veja `REMOVIDO_DOCKER.md`).
- Para exemplos de uso dos endpoints e detalhes de autenticação/acesso ao banco H2, consulte o arquivo `leiame.txt`.

**Pressupostos:**
- Você está utilizando o JDK 21
- Está usando o CMD ou PowerShell como terminal
- Possui o MySQL rodando localmente
- Os comandos do Git estão adicionados ao seu PATH