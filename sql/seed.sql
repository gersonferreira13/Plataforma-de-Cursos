INSERT INTO usuarios (nome, email, senha, tipo_usuario)
VALUES ('Admin Pedro', 'admin@cursos.com', 'senha123', 'admin');

INSERT INTO cursos (titulo, descricao, criado_por)
VALUES ('HTML Pra Você', 'Venha fazer parte do mundo digital', 1);

INSERT INTO aulas (curso_id, titulo, video_url, ordem)
VALUES (1, 'Introdução ao HTML', 'Finge que tem link', 1),
(1, 'Tags', 'Finge outro link', 2),
(1, 'Listas e Tabelas', 'Link 3', 3);

INSERT INTO inscricoes (usuario_id, curso_id)
VALUES (2, 1);
