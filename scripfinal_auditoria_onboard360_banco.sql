/* Nomes e RMs:
- Bruna Oliveira Gomes - RM553135
- Enzo Gabriel Nicolosi Croquer - RM553213
- Inácia dos Santos Silva - RM 553401
- Rickson.Hirata - RM553921
- Tony Khaled Osman - RM553050
*/

-- Relatório de Tabelas e Registros
SELECT table_name as "Tabela", num_rows as "Total de Linhas (Aprox.)"
FROM user_tables
WHERE table_name LIKE 'T_OB360_%';

-- Verificação de Sequências
SELECT sequence_name, last_number, increment_by 
FROM user_sequences 
WHERE sequence_name LIKE 'SQ_OB360_%';

-- Verificação da View
SELECT view_name, text 
FROM user_views 
WHERE view_name = 'V_OB360_CURSOS_OBRIGATORIOS';



DECLARE
    v_nome  T_OB360_USUARIO.nm_usuario%TYPE := 'Ricardo Hirata';
    v_email T_OB360_USUARIO.ds_email%TYPE := 'ricardo.hirata@eurofarma.com.br';
BEGIN
    INSERT INTO T_OB360_USUARIO (id_usuario, nm_usuario, ds_email, ds_senha, ds_cargo)
    VALUES (SQ_OB360_USUARIO.NEXTVAL, v_nome, v_email, 'farma@2026', 'Especialista de Sistemas');
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Sucesso: Integrante ' || v_nome || ' inserido no sistema Onboard360.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro ao inserir: ' || SQLERRM);
        ROLLBACK;
END;



DECLARE
    v_nome    T_OB360_USUARIO.nm_usuario%TYPE;
    v_xp      T_OB360_USUARIO.nr_xp_total%TYPE;
BEGIN
    -- Busca o usuário com ID 100 (primeiro da sequence)
    SELECT nm_usuario, nr_xp_total 
    INTO v_nome, v_xp
    FROM T_OB360_USUARIO 
    WHERE id_usuario = 100;
    
    DBMS_OUTPUT.PUT_LINE('--- Relatório de Gamificação ---');
    DBMS_OUTPUT.PUT_LINE('Colaborador: ' || v_nome);
    DBMS_OUTPUT.PUT_LINE('Experiência (XP): ' || v_xp);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Aviso: Usuário com ID 100 não encontrado.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro na consulta: ' || SQLERRM);
END;