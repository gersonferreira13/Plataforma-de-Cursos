CREATE DATABASE plataforma_cursos;
USE plataforma_cursos;

CREATE TABLE usuarios (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100) UNIQUE,
senha VARCHAR(255),
tipo_usuario ENUM('aluno', 'admin') DEFAULT 'aluno'
);

CREATE TABLE cursos (
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100),
descricao TEXT,
criado_por INT,
data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (criado_por) REFERENCES usuarios(id)
);

CREATE TABLE aulas (
id INT AUTO_INCREMENT PRIMARY KEY,
curso_id INT,
titulo VARCHAR(100),
video_url TEXT,
ordem INT,
FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

CREATE TABLE inscricoes (
id INT AUTO_INCREMENT KEY,
usuario_id INT,
curso_id INT,
data_inscricao DATETIME DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

CREATE TABLE progresso (
id INT AUTO_INCREMENT PRIMARY KEY,
usuario_id INT,
aula_id INT,
assistido BOOLEAN DEFAULT FALSE,
data_assistido DATETIME,
FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
FOREIGN KEY (aula_id) REFERENCES aulas(id)
);
