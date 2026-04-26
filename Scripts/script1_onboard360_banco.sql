/* Nomes e RMs:
- Bruna Oliveira Gomes - RM553135
- Enzo Gabriel Nicolosi Croquer - RM553213
- Inácia dos Santos Silva - RM 553401
- Rickson.Hirata - RM553921
- Tony Khaled Osman - RM553050
*/

-- Criando a Tabela de Usuários (Colaboradores Eurofarma)
CREATE TABLE T_OB360_USUARIO (
    id_usuario      NUMBER(10) PRIMARY KEY,
    nm_usuario      VARCHAR2(100) NOT NULL,
    ds_email        VARCHAR2(100) NOT NULL UNIQUE,
    ds_senha        VARCHAR2(100) NOT NULL,
    ds_cargo        VARCHAR2(50),
    nr_xp_total     NUMBER(10) DEFAULT 0
);

-- Criando a Tabela de Cursos de Onboarding
CREATE TABLE T_OB360_CURSO (
    id_curso        NUMBER(10) PRIMARY KEY,
    nm_curso        VARCHAR2(100) NOT NULL,
    ds_curso        VARCHAR2(400),
    tp_curso        VARCHAR2(20) NOT NULL -- Ex: 'OBRIGATORIO', 'OPCIONAL'
);

-- Criando a Tabela de Lições (Conteúdo dos Treinamentos)
CREATE TABLE T_OB360_LICAO (
    id_licao        NUMBER(10) PRIMARY KEY,
    id_curso        NUMBER(10) NOT NULL,
    nm_licao        VARCHAR2(100) NOT NULL,
    ds_conteudo     CLOB,
    CONSTRAINT fk_licao_curso FOREIGN KEY (id_curso) REFERENCES T_OB360_CURSO(id_curso)
);

-- Criando a Tabela de Progresso (Relacionamento N para N)
CREATE TABLE T_OB360_PROGRESSO (
    id_progresso    NUMBER(10) PRIMARY KEY,
    id_usuario      NUMBER(10) NOT NULL,
    id_licao        NUMBER(10) NOT NULL,
    st_concluido    CHAR(1) DEFAULT 'N', -- 'S' para Sim, 'N' para Não
    dt_conclusao    DATE,
    CONSTRAINT fk_prog_usuario FOREIGN KEY (id_usuario) REFERENCES T_OB360_USUARIO(id_usuario),
    CONSTRAINT fk_prog_licao FOREIGN KEY (id_licao) REFERENCES T_OB360_LICAO(id_licao),
    CONSTRAINT ck_status CHECK (st_concluido IN ('S', 'N'))
);