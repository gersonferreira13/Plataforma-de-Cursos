#Plataforma de Cursos Online

Projeto de estrutura de banco de dados para uma plataforma de cursos online, desenvolvido em MySQL.

##Funcionalidades simuladas

- Cadastro de usuários (aluno e admin)
- Criação de cursos e aulas
- Inscrição em cursos
- Controle de progresso do aluno

##Estrutura do Banco

- `usuarios`
- `cursos`
- `aulas`
- `inscricoes`
- `progresso`

##Como usar

1. Importe o arquivo `sql/schema.sql` no seu MySQL ou phpMyAdmin
2. Depois, importe o `sql/seed.sql` para popular os dados
3. Execute `SELECT * FROM usuarios;` para testar

##Futuras melhorias

- Backend em Node.js ou Flask
- Interface web para o aluno
- Sistema de login
