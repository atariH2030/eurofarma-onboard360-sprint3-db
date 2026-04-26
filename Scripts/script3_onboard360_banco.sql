INSERT INTO T_OB360_USUARIO (id_usuario, nm_usuario, ds_email, ds_senha, ds_cargo, nr_xp_total) 
VALUES (SQ_OB360_USUARIO.NEXTVAL, 'Carlos Silva', 'carlos.silva@eurofarma.com.br', 'senha123', 'Analista de RH', 500);

INSERT INTO T_OB360_CURSO (id_curso, nm_curso, ds_curso, tp_curso) 
VALUES (SQ_OB360_CURSO.NEXTVAL, 'Cultura Eurofarma', 'Introdução aos valores da empresa', 'OBRIGATORIO');

-- Repita os INSERTS acima mudando os dados até completar 10 de cada.
COMMIT;


/* ==========================================
   SCRIPT 3: DML - CARGA INICIAL DE DADOS
   (Mínimo de 10 registros reais por tabela)
   ========================================== */

-- 1. INSERINDO 10 USUÁRIOS (COLABORADORES EUROFARMA)
INSERT INTO T_OB360_USUARIO VALUES (SQ_OB360_USUARIO.NEXTVAL, 'Carlos Silva', 'carlos.silva@eurofarma.com.br', 'senha123', 'Analista de RH', 150);
INSERT INTO T_OB360_USUARIO VALUES (SQ_OB360_USUARIO.NEXTVAL, 'Marta Oliveira', 'marta.oliveira@eurofarma.com.br', 'senha123', 'Gerente Comercial', 500);
INSERT INTO T_OB360_USUARIO VALUES (SQ_OB360_USUARIO.NEXTVAL, 'João Pedro Santos', 'joao.santos@eurofarma.com.br', 'senha123', 'Estagiário de TI', 50);
INSERT INTO T_OB360_USUARIO VALUES (SQ_OB360_USUARIO.NEXTVAL, 'Ana Beatriz Costa', 'ana.costa@eurofarma.com.br', 'senha123', 'Farmacêutica Jr', 200);
INSERT INTO T_OB360_USUARIO VALUES (SQ_OB360_USUARIO.NEXTVAL, 'Lucas Almeida', 'lucas.almeida@eurofarma.com.br', 'senha123', 'Pesquisador Pleno', 800);
INSERT INTO T_OB360_USUARIO VALUES (SQ_OB360_USUARIO.NEXTVAL, 'Fernanda Lima', 'fernanda.lima@eurofarma.com.br', 'senha123', 'Analista de Qualidade', 350);
INSERT INTO T_OB360_USUARIO VALUES (SQ_OB360_USUARIO.NEXTVAL, 'Roberto Gomes', 'roberto.gomes@eurofarma.com.br', 'senha123', 'Diretor de Operações', 1200);
INSERT INTO T_OB360_USUARIO VALUES (SQ_OB360_USUARIO.NEXTVAL, 'Juliana Castro', 'juliana.castro@eurofarma.com.br', 'senha123', 'Assistente Administrativo', 100);
INSERT INTO T_OB360_USUARIO VALUES (SQ_OB360_USUARIO.NEXTVAL, 'Diego Fernandes', 'diego.fernandes@eurofarma.com.br', 'senha123', 'Desenvolvedor Mobile', 450);
INSERT INTO T_OB360_USUARIO VALUES (SQ_OB360_USUARIO.NEXTVAL, 'Camila Rocha', 'camila.rocha@eurofarma.com.br', 'senha123', 'Analista de Marketing', 220);

-- 2. INSERINDO 10 CURSOS DE ONBOARDING
INSERT INTO T_OB360_CURSO VALUES (SQ_OB360_CURSO.NEXTVAL, 'Cultura Eurofarma', 'Introdução aos valores e missão da empresa.', 'OBRIGATORIO');
INSERT INTO T_OB360_CURSO VALUES (SQ_OB360_CURSO.NEXTVAL, 'Segurança da Informação', 'Boas práticas de proteção de dados corporativos e LGPD.', 'OBRIGATORIO');
INSERT INTO T_OB360_CURSO VALUES (SQ_OB360_CURSO.NEXTVAL, 'Compliance e Ética', 'Código de conduta e normas internas da Eurofarma.', 'OBRIGATORIO');
INSERT INTO T_OB360_CURSO VALUES (SQ_OB360_CURSO.NEXTVAL, 'Ferramentas Ágeis', 'Como utilizar Scrum e Kanban no dia a dia.', 'OPCIONAL');
INSERT INTO T_OB360_CURSO VALUES (SQ_OB360_CURSO.NEXTVAL, 'Boas Práticas de Laboratório', 'Normas de segurança para ambiente laboratorial.', 'OBRIGATORIO');
INSERT INTO T_OB360_CURSO VALUES (SQ_OB360_CURSO.NEXTVAL, 'Liderança Inspiradora', 'Desenvolvimento de habilidades para novos gestores.', 'OPCIONAL');
INSERT INTO T_OB360_CURSO VALUES (SQ_OB360_CURSO.NEXTVAL, 'Comunicação Não Violenta', 'Técnicas para melhorar o clima organizacional.', 'OPCIONAL');
INSERT INTO T_OB360_CURSO VALUES (SQ_OB360_CURSO.NEXTVAL, 'Pacote Office Avançado', 'Treinamento de Excel e PowerPoint para relatórios.', 'OPCIONAL');
INSERT INTO T_OB360_CURSO VALUES (SQ_OB360_CURSO.NEXTVAL, 'Prevenção de Acidentes', 'CIPA e primeiros socorros no ambiente de trabalho.', 'OBRIGATORIO');
INSERT INTO T_OB360_CURSO VALUES (SQ_OB360_CURSO.NEXTVAL, 'Inovação e Criatividade', 'Design Thinking aplicado a projetos farmacêuticos.', 'OPCIONAL');

-- 3. INSERINDO 10 LIÇÕES (Vinculadas aos Cursos acima. Usando IDs manuais para garantir a chave estrangeira)
INSERT INTO T_OB360_LICAO VALUES (SQ_OB360_LICAO.NEXTVAL, 100, 'Nossa História', 'Fundação da Eurofarma e sua expansão global.');
INSERT INTO T_OB360_LICAO VALUES (SQ_OB360_LICAO.NEXTVAL, 100, 'Missão, Visão e Valores', 'Os pilares que sustentam nossas decisões corporativas.');
INSERT INTO T_OB360_LICAO VALUES (SQ_OB360_LICAO.NEXTVAL, 110, 'Phishing e Senhas Fortes', 'Como identificar e-mails maliciosos.');
INSERT INTO T_OB360_LICAO VALUES (SQ_OB360_LICAO.NEXTVAL, 110, 'Uso de Dispositivos Móveis', 'Regras para uso de celulares corporativos e BYOD.');
INSERT INTO T_OB360_LICAO VALUES (SQ_OB360_LICAO.NEXTVAL, 120, 'Antissuborno e Corrupção', 'Treinamento sobre a lei anticorrupção brasileira.');
INSERT INTO T_OB360_LICAO VALUES (SQ_OB360_LICAO.NEXTVAL, 130, 'O que é o Scrum?', 'Introdução aos papéis e cerimônias do framework.');
INSERT INTO T_OB360_LICAO VALUES (SQ_OB360_LICAO.NEXTVAL, 140, 'EPIs Obrigatórios', 'Uso correto de jalecos, óculos e luvas.');
INSERT INTO T_OB360_LICAO VALUES (SQ_OB360_LICAO.NEXTVAL, 140, 'Descarte de Resíduos', 'Como separar lixo químico, biológico e comum.');
INSERT INTO T_OB360_LICAO VALUES (SQ_OB360_LICAO.NEXTVAL, 180, 'Rota de Fuga', 'Procedimentos em caso de incêndio ou emergência.');
INSERT INTO T_OB360_LICAO VALUES (SQ_OB360_LICAO.NEXTVAL, 190, 'Mapa de Empatia', 'Como entender as reais dores dos nossos clientes.');

-- 4. INSERINDO 10 PROGRESSOS (Interação dos Usuários com as Lições)
INSERT INTO T_OB360_PROGRESSO VALUES (SQ_OB360_PROGRESSO.NEXTVAL, 100, 100, 'S', TO_DATE('2026-04-20', 'YYYY-MM-DD'));
INSERT INTO T_OB360_PROGRESSO VALUES (SQ_OB360_PROGRESSO.NEXTVAL, 100, 110, 'S', TO_DATE('2026-04-21', 'YYYY-MM-DD'));
INSERT INTO T_OB360_PROGRESSO VALUES (SQ_OB360_PROGRESSO.NEXTVAL, 110, 120, 'N', NULL);
INSERT INTO T_OB360_PROGRESSO VALUES (SQ_OB360_PROGRESSO.NEXTVAL, 120, 100, 'S', TO_DATE('2026-04-22', 'YYYY-MM-DD'));
INSERT INTO T_OB360_PROGRESSO VALUES (SQ_OB360_PROGRESSO.NEXTVAL, 130, 150, 'N', NULL);
INSERT INTO T_OB360_PROGRESSO VALUES (SQ_OB360_PROGRESSO.NEXTVAL, 140, 160, 'S', TO_DATE('2026-04-23', 'YYYY-MM-DD'));
INSERT INTO T_OB360_PROGRESSO VALUES (SQ_OB360_PROGRESSO.NEXTVAL, 150, 170, 'S', TO_DATE('2026-04-24', 'YYYY-MM-DD'));
INSERT INTO T_OB360_PROGRESSO VALUES (SQ_OB360_PROGRESSO.NEXTVAL, 160, 180, 'N', NULL);
INSERT INTO T_OB360_PROGRESSO VALUES (SQ_OB360_PROGRESSO.NEXTVAL, 170, 190, 'S', TO_DATE('2026-04-25', 'YYYY-MM-DD'));
INSERT INTO T_OB360_PROGRESSO VALUES (SQ_OB360_PROGRESSO.NEXTVAL, 180, 100, 'N', NULL);

-- COMANDO VITAL: Salva os dados permanentemente no banco
COMMIT;