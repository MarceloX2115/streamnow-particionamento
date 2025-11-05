CREATE TABLE usuarios (
    id SERIAL,
    nome VARCHAR(100),
    pais VARCHAR(50),
    data_cadastro DATE,
    plano VARCHAR(20)
) PARTITION BY LIST (pais);

CREATE TABLE usuarios_brasil PARTITION OF usuarios FOR VALUES IN ('Brasil');
CREATE TABLE usuarios_estados_unidos PARTITION OF usuarios FOR VALUES IN ('Estados Unidos');
CREATE TABLE usuarios_portugal PARTITION OF usuarios FOR VALUES IN ('Portugal');
CREATE TABLE usuarios_japao PARTITION OF usuarios FOR VALUES IN ('Japão');
CREATE TABLE usuarios_argentina PARTITION OF usuarios FOR VALUES IN ('Argentina');
CREATE TABLE usuarios_chile PARTITION OF usuarios FOR VALUES IN ('Chile');
CREATE TABLE usuarios_alemanha PARTITION OF usuarios FOR VALUES IN ('Alemanha');
CREATE TABLE usuarios_franca PARTITION OF usuarios FOR VALUES IN ('França');
CREATE TABLE usuarios_canada PARTITION OF usuarios FOR VALUES IN ('Canadá');
CREATE TABLE usuarios_australia PARTITION OF usuarios FOR VALUES IN ('Austrália');
CREATE TABLE usuarios_espanha PARTITION OF usuarios FOR VALUES IN ('Espanha');
CREATE TABLE usuarios_italia PARTITION OF usuarios FOR VALUES IN ('Itália');
CREATE TABLE usuarios_reino_unido PARTITION OF usuarios FOR VALUES IN ('Reino Unido');
CREATE TABLE usuarios_coreia_do_sul PARTITION OF usuarios FOR VALUES IN ('Coreia do Sul');
CREATE TABLE usuarios_mexico PARTITION OF usuarios FOR VALUES IN ('México');

delete from usuarios;
INSERT INTO usuarios (nome, pais, data_cadastro, plano) VALUES
('Ana Oliveira', 'Brasil', '2024-01-10', 'Premium'),
('Lucas Martins', 'Estados Unidos', '2024-01-22', 'Básico'),
('Sofia Ribeiro', 'Portugal', '2024-02-05', 'Família'),
('Miguel Fernandes', 'Japão', '2024-02-18', 'Premium'),
('Carla Nunes', 'Argentina', '2024-03-03', 'Básico'),
('Eduardo Lima', 'Chile', '2024-03-25', 'Família'),
('Beatriz Souza', 'Alemanha', '2024-04-12', 'Premium'),
('Hugo Almeida', 'França', '2024-04-28', 'Básico'),
('Larissa Santos', 'Canadá', '2024-05-06', 'Família'),
('Tiago Rocha', 'Austrália', '2024-05-20', 'Premium'),
('Fernanda Castro', 'Espanha', '2024-06-02', 'Básico'),
('Ricardo Mendes', 'Itália', '2024-06-15', 'Família'),
('Camila Costa', 'Reino Unido', '2024-07-08', 'Premium'),
('Gabriel Torres', 'Coreia do Sul', '2024-07-19', 'Básico'),
('Isabela Duarte', 'México', '2024-08-03', 'Família'),
('Pedro Carvalho', 'Canadá', '2024-08-24', 'Premium'),
('Juliana Teixeira', 'Alemanha', '2024-09-10', 'Básico'),
('Marcos Silva', 'Brasil', '2024-09-27', 'Família'),
('Natália Correia', 'Estados Unidos', '2024-10-14', 'Premium'),
('Rafael Azevedo', 'França', '2024-10-25', 'Básico'),
('Paula Moreira', 'Portugal', '2024-11-05', 'Família'),
('Felipe Andrade', 'Japão', '2024-11-15', 'Premium'),
('Roberta Lima', 'Argentina', '2024-12-01', 'Básico'),
('André Barbosa', 'Chile', '2024-12-22', 'Família'),
('Tatiane Moura', 'Itália', '2024-12-30', 'Premium');

 SELECT tableoid::regclass AS particao,*
 FROM usuarios;
