/* Nomes e RMs:
- Bruna Oliveira Gomes - RM553135
- Enzo Gabriel Nicolosi Croquer - RM553213
- Inácia dos Santos Silva - RM 553401
- Rickson.Hirata - RM553921
- Tony Khaled Osman - RM553050
*/

CREATE SEQUENCE SQ_OB360_USUARIO START WITH 100 INCREMENT BY 10;
CREATE SEQUENCE SQ_OB360_CURSO START WITH 100 INCREMENT BY 10;
CREATE SEQUENCE SQ_OB360_LICAO START WITH 100 INCREMENT BY 10;
CREATE SEQUENCE SQ_OB360_PROGRESSO START WITH 100 INCREMENT BY 10;


-- Justificativa: Acelera a busca e geração de relatórios de colaboradores agrupados por cargo.
CREATE INDEX IDX_USUARIO_CARGO ON T_OB360_USUARIO(ds_cargo);

-- Justificativa: Melhora a performance do dashboard que lista o progresso por colaborador.
CREATE INDEX IDX_PROGRESSO_USER ON T_OB360_PROGRESSO(id_usuario);


-- View que filtra apenas cursos obrigatórios da Eurofarma.
-- O CHECK OPTION impede que novos cursos sejam inseridos através da view se não forem 'OBRIGATORIO'.
CREATE OR REPLACE VIEW V_OB360_CURSOS_OBRIGATORIOS AS
SELECT id_curso, nm_curso, tp_curso
FROM T_OB360_CURSO
WHERE tp_curso = 'OBRIGATORIO'
WITH CHECK OPTION;