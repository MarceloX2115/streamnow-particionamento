# 📊 Projeto: Particionamento de Usuários por País — PostgreSQL

Este projeto demonstra o uso de **particionamento por lista (LIST PARTITIONING)** em PostgreSQL, aplicando o conceito na tabela `usuarios`, dividida por país.

---

## 🧱 Estrutura da Tabela

```sql
CREATE TABLE usuarios (
    id SERIAL,
    nome VARCHAR(100),
    pais VARCHAR(50),
    data_cadastro DATE,
    plano VARCHAR(20)
) PARTITION BY LIST (pais);

🌍 Partições Criadas

Foram criadas partições específicas para cada país e uma partição default para registros não previstos.

Exemplo:

CREATE TABLE usuarios_brasil PARTITION OF usuarios FOR VALUES IN ('Brasil');
CREATE TABLE usuarios_estados_unidos PARTITION OF usuarios FOR VALUES IN ('Estados Unidos');
CREATE TABLE usuarios_outros PARTITION OF usuarios DEFAULT;

📥 Exemplo de Inserção
INSERT INTO usuarios (nome, pais, data_cadastro, plano) VALUES
('Ana Oliveira', 'Brasil', '2024-01-10', 'Premium'),
('Lucas Martins', 'Estados Unidos', '2024-01-22', 'Básico'),
('Sofia Ribeiro', 'Portugal', '2024-02-05', 'Família');

⚙️ Objetivo

Demonstrar o uso prático de particionamento por LISTA.

Facilitar consultas e manutenção de grandes volumes de dados.

Organizar usuários de forma lógica e otimizada por país.

👨‍💻 Autor

Marcello Sampaio
📅 Projeto acadêmico — PostgreSQL
🎓 Demonstração prática de banco de dados com particionamento
