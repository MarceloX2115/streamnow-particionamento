drop table reproducoes;
CREATE TABLE reproducoes (
    id_reproducao SERIAL,
    data_reproducao DATE,
    duracao_segundos INT,
    categoria VARCHAR(50)
	) 
	PARTITION BY RANGE (data_reproducao);

CREATE TABLE reproducao_janeiro PARTITION OF reproducoes
    FOR VALUES FROM ('2024-01-01') TO ('2024-01-31');

CREATE TABLE reproducao_fevereiro PARTITION OF reproducoes
    FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');

CREATE TABLE reproducao_marco PARTITION OF reproducoes
    FOR VALUES FROM ('2024-03-01') TO ('2024-04-01');

CREATE TABLE reproducao_abril PARTITION OF reproducoes
    FOR VALUES FROM ('2024-04-01') TO ('2024-05-01');

CREATE TABLE reproducao_maio PARTITION OF reproducoes
    FOR VALUES FROM ('2024-05-01') TO ('2024-06-01');

CREATE TABLE reproducao_junho PARTITION OF reproducoes
    FOR VALUES FROM ('2024-06-01') TO ('2024-07-01');

CREATE TABLE reproducao_julho PARTITION OF reproducoes
    FOR VALUES FROM ('2024-07-01') TO ('2024-08-01');

CREATE TABLE reproducao_agosto PARTITION OF reproducoes
    FOR VALUES FROM ('2024-08-01') TO ('2024-09-01');

CREATE TABLE reproducao_setembro PARTITION OF reproducoes
    FOR VALUES FROM ('2024-09-01') TO ('2024-10-01');

CREATE TABLE reproducao_outubro PARTITION OF reproducoes
    FOR VALUES FROM ('2024-10-01') TO ('2024-11-01');

CREATE TABLE reproducao_novembro PARTITION OF reproducoes
    FOR VALUES FROM ('2024-11-01') TO ('2024-12-01');

CREATE TABLE reproducao_dezembro PARTITION OF reproducoes
    FOR VALUES FROM ('2024-12-01') TO ('2025-01-01');

delete from reproducoes;
INSERT INTO reproducoes (data_reproducao, duracao_segundos, categoria) VALUES
('2024-01-15', 180, 'Pop'),
('2024-01-20', 240, 'Sertanejo'),
('2024-02-03', 200, 'Rock'),
('2024-02-10', 300, 'Latina'),
('2024-03-08', 150, 'Jazz'),
('2024-03-22', 210, 'J-Pop'),
('2024-04-05', 260, 'Clássica'),
('2024-04-12', 190, 'Funk'),
('2024-05-01', 230, 'Pop'),
('2024-05-15', 250, 'Eletrônica'),
('2024-06-10', 400, 'Latina'),
('2024-06-25', 300, 'Sertanejo'),
('2024-07-02', 220, 'Rock'),
('2024-07-19', 180, 'Pop'),
('2024-08-07', 260, 'Clássica'),
('2024-08-30', 310, 'Eletrônica'),
('2024-09-05', 200, 'Funk'),
('2024-09-14', 240, 'Sertanejo'),
('2024-10-10', 190, 'Jazz'),
('2024-10-28', 270, 'Rock'),
('2024-11-01', 230, 'Pop'),
('2024-11-03', 300, 'Latina'),
('2024-11-15', 250, 'Sertanejo'),
('2024-12-05', 220, 'Clássica'),
('2024-12-20', 310, 'Funk');


SELECT tableoid::regclass AS particao,*
FROM reproducoes;

