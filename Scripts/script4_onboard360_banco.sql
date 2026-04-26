/* Nomes e RMs:
- Bruna Oliveira Gomes - RM553135
- Enzo Gabriel Nicolosi Croquer - RM553213
- Inácia dos Santos Silva - RM 553401
- Rickson.Hirata - RM553921
- Tony Khaled Osman - RM553050
*/

-- ==========================================
-- SCRIPT 4: PROGRAMAÇÃO PL/SQL (Inserção e Consulta)
-- ==========================================

-- 1. BLOCO ANÔNIMO DE INSERÇÃO
DECLARE
    v_nome  T_OB360_USUARIO.nm_usuario%TYPE := 'Rickson.Hirata';
    v_email T_OB360_USUARIO.ds_email%TYPE := 'rickson.hirata@eurofarma.com.br';
BEGIN
    INSERT INTO T_OB360_USUARIO (id_usuario, nm_usuario, ds_email, ds_senha, ds_cargo, nr_xp_total)
    VALUES (SQ_OB360_USUARIO.NEXTVAL, v_nome, v_email, 'farma@2026', 'Desenvolvedor Web', 0);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Sucesso: Integrante ' || v_nome || ' inserido no sistema Onboard360.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro ao inserir: ' || SQLERRM);
        ROLLBACK;
END;
/

-- 2. BLOCO ANÔNIMO DE CONSULTA
DECLARE
    v_nome    T_OB360_USUARIO.nm_usuario%TYPE;
    v_xp      T_OB360_USUARIO.nr_xp_total%TYPE;
BEGIN
    SELECT nm_usuario, nr_xp_total INTO v_nome, v_xp
    FROM T_OB360_USUARIO WHERE id_usuario = 100;
    
    DBMS_OUTPUT.PUT_LINE('--- Relatório de Gamificação ---');
    DBMS_OUTPUT.PUT_LINE('Colaborador: ' || v_nome);
    DBMS_OUTPUT.PUT_LINE('Experiência (XP): ' || v_xp);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Aviso: Usuário ID 100 não encontrado.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro na consulta: ' || SQLERRM);
END;
/