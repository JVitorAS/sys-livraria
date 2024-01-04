CREATE DATABASE PROJECT;

USE PROJECT;

CREATE TABLE VendasLivros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_venda DATE,
    livro_id INT,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    total DECIMAL(10, 2),
    metodo_pagamento VARCHAR(50),
    cliente_id INT
);

ALTER TABLE VendasLivros
ADD CONSTRAINT FK_VendasLivros_CLIENTE
FOREIGN KEY (cliente_id) REFERENCES CLIENTE(id);

ALTER TABLE VENDAS
ADD CONSTRAINT FK_VENDAS_BARRA
FOREIGN KEY (produto_vendido) REFERENCES BARRA(id);

select * from cliente;

select * from vendaslivros;

CREATE TABLE LIVROS(
id INT auto_increment PRIMARY KEY,
nome VARCHAR(300) NOT NULL,
autor VARCHAR(255) NOT NULL,
editora VARCHAR(180) NOT NULL
);
DROP TABLE LIVROS;

CREATE TABLE CLIENTE(
id int auto_increment primary key,
nome varchar(255),
cnpj varchar(20) unique,
empresa varchar(300)
);


INSERT INTO VendasLivros (data_venda, livro_id, quantidade, preco_unitario, total, metodo_pagamento, cliente_id)
VALUES ('2023-01-15', 1, 3, 25.00, 75.00, 'Cartão de Crédito', 101),
('2023-02-20', 2, 2, 30.00, 60.00, 'PayPal', 102),
('2023-03-10', 3, 1, 40.00, 40.00, 'Boleto Bancário', 103),
('2023-04-05', 1, 5, 25.00, 125.00, 'Transferência Bancária', 104),
('2023-05-12', 4, 2, 35.00, 70.00, 'Cartão de Débito', 105),
('2023-06-18', 2, 4, 30.00, 120.00, 'Cartão de Crédito', 106),
('2023-07-22', 3, 3, 40.00, 120.00, 'PayPal', 107),
('2023-08-10', 1, 2, 25.00, 50.00, 'Boleto Bancário', 108),
('2023-09-05', 4, 1, 35.00, 35.00, 'Transferência Bancária', 109),
('2023-10-14', 2, 3, 30.00, 90.00, 'Cartão de Débito', 110),
('2023-11-20', 1, 6, 25.00, 150.00, 'Cartão de Crédito', 111),
('2023-12-08', 3, 2, 40.00, 80.00, 'Boleto Bancário', 112),
('2024-01-17', 4, 4, 35.00, 140.00, 'PayPal', 113),
('2024-02-25', 1, 3, 25.00, 75.00, 'Transferência Bancária', 114),
('2024-03-12', 2, 2, 30.00, 60.00, 'Cartão de Débito', 115);

INSERT INTO VendasLivros (data_venda, livro_id, quantidade, preco_unitario, total, metodo_pagamento, cliente_id)
VALUES
('2024-04-05', 3, 5, 40.00, 200.00, 'Cartão de Crédito', 116),
('2024-05-18', 1, 4, 25.00, 100.00, 'Boleto Bancário', 117),
('2024-06-22', 2, 1, 30.00, 30.00, 'PayPal', 118),
('2024-07-10', 4, 3, 35.00, 105.00, 'Transferência Bancária', 119),
('2024-08-14', 3, 2, 40.00, 80.00, 'Cartão de Débito', 120),
('2024-09-05', 1, 6, 25.00, 150.00, 'Cartão de Crédito', 121),
('2024-10-18', 2, 3, 30.00, 90.00, 'Boleto Bancário', 122),
('2024-11-20', 4, 2, 35.00, 70.00, 'PayPal', 123),
('2024-12-08', 1, 4, 25.00, 100.00, 'Transferência Bancária', 124),
('2025-01-17', 3, 1, 40.00, 40.00, 'Cartão de Débito', 125);

INSERT INTO VendasLivros (data_venda, livro_id, quantidade, preco_unitario, total, metodo_pagamento, cliente_id)
VALUES
('2024-11-20', 4, 2, 35.00, 70.00, 'PayPal', 123),
('2024-12-08', 1, 4, 25.00, 100.00, 'Transferência Bancária', 124),
('2025-01-17', 3, 1, 40.00, 40.00, 'Cartão de Débito', 125),
('2025-02-25', 2, 3, 30.00, 90.00, 'Cartão de Crédito', 126),
('2025-03-10', 1, 2, 25.00, 50.00, 'Boleto Bancário', 127),
('2025-04-15', 4, 5, 35.00, 175.00, 'Transferência Bancária', 128),
('2025-05-22', 3, 4, 40.00, 160.00, 'PayPal', 129),
('2025-06-18', 2, 2, 30.00, 60.00, 'Cartão de Débito', 130),
('2025-07-07', 1, 3, 25.00, 75.00, 'Cartão de Crédito', 131),
('2025-08-28', 4, 1, 35.00, 35.00, 'Boleto Bancário', 132),
('2025-09-09', 3, 2, 40.00, 80.00, 'Transferência Bancária', 133),
('2025-10-11', 2, 4, 30.00, 120.00, 'PayPal', 134),
('2025-11-19', 1, 5, 25.00, 125.00, 'Cartão de Débito', 135),
('2025-12-25', 4, 3, 35.00, 105.00, 'Cartão de Crédito', 136),
('2026-01-30', 3, 2, 40.00, 80.00, 'Boleto Bancário', 137),
('2026-02-14', 2, 1, 30.00, 30.00, 'Transferência Bancária', 138),
('2026-03-20', 1, 4, 25.00, 100.00, 'PayPal', 139),
('2026-04-05', 4, 3, 35.00, 105.00, 'Cartão de Débito', 140),
('2026-05-18', 3, 2, 40.00, 80.00, 'Cartão de Crédito', 141),
('2026-06-22', 2, 4, 30.00, 120.00, 'Boleto Bancário', 142),
('2026-07-10', 1, 5, 25.00, 125.00, 'Transferência Bancária', 143),
('2026-08-14', 4, 2, 35.00, 70.00, 'PayPal', 144),
('2026-09-05', 3, 1, 40.00, 40.00, 'Cartão de Débito', 145),
('2026-10-14', 2, 3, 30.00, 90.00, 'Cartão de Crédito', 146),
('2026-11-20', 1, 4, 25.00, 100.00, 'Boleto Bancário', 147),
('2026-12-08', 4, 2, 35.00, 70.00, 'Transferência Bancária', 148),
('2027-01-17', 3, 3, 40.00, 120.00, 'PayPal', 149),
('2027-02-25', 2, 1, 30.00, 30.00, 'Cartão de Débito', 150),
('2027-03-12', 1, 5, 25.00, 125.00, 'Cartão de Crédito', 151);

INSERT INTO VendasLivros (data_venda, livro_id, quantidade, preco_unitario, total, metodo_pagamento, cliente_id)
VALUES
('2027-04-05', 3, 4, 40.00, 160.00, 'Cartão de Crédito', 152),
('2027-05-18', 1, 3, 25.00, 75.00, 'Boleto Bancário', 153),
('2027-06-22', 2, 2, 30.00, 60.00, 'PayPal', 154),
('2027-07-10', 4, 1, 35.00, 35.00, 'Transferência Bancária', 155),
('2027-08-14', 3, 3, 40.00, 120.00, 'Cartão de Débito', 156),
('2027-09-05', 1, 4, 25.00, 100.00, 'Cartão de Crédito', 157),
('2027-10-18', 2, 5, 30.00, 150.00, 'Boleto Bancário', 158),
('2027-11-20', 4, 2, 35.00, 70.00, 'PayPal', 159),
('2027-12-08', 1, 3, 25.00, 75.00, 'Transferência Bancária', 160),
('2028-01-17', 3, 4, 40.00, 160.00, 'Cartão de Débito', 161),
('2028-02-25', 2, 2, 30.00, 60.00, 'Cartão de Crédito', 162),
('2028-03-12', 1, 3, 25.00, 75.00, 'Boleto Bancário', 163),
('2028-04-05', 4, 5, 35.00, 175.00, 'Transferência Bancária', 164),
('2028-05-18', 3, 2, 40.00, 80.00, 'PayPal', 165),
('2028-06-22', 2, 1, 30.00, 30.00, 'Cartão de Débito', 166),
('2028-07-10', 1, 4, 25.00, 100.00, 'Cartão de Crédito', 167);

INSERT INTO VendasLivros (data_venda, livro_id, quantidade, preco_unitario, total, metodo_pagamento, cliente_id)
VALUES 
('2024-04-05', 3, 5, 40.00, 200.00, 'Cartão de Crédito', 116),
('2024-05-10', 4, 3, 35.00, 105.00, 'PayPal', 117),
('2024-06-18', 1, 2, 25.00, 50.00, 'Boleto Bancário', 118),
('2024-07-22', 2, 4, 30.00, 120.00, 'Transferência Bancária', 119),
('2024-08-10', 3, 1, 40.00, 40.00, 'Cartão de Débito', 120),
('2024-09-05', 4, 2, 35.00, 70.00, 'Cartão de Crédito', 121),
('2024-10-14', 1, 4, 25.00, 100.00, 'PayPal', 122),
('2024-11-20', 2, 3, 30.00, 90.00, 'Boleto Bancário', 123),
('2024-12-08', 3, 2, 40.00, 80.00, 'Transferência Bancária', 124),
('2025-01-17', 4, 3, 35.00, 105.00, 'Cartão de Débito', 125),
('2025-02-25', 1, 5, 25.00, 125.00, 'Cartão de Crédito', 126),
('2025-03-12', 2, 2, 30.00, 60.00, 'PayPal', 127),
('2025-04-05', 3, 4, 40.00, 160.00, 'Boleto Bancário', 128),
('2025-05-10', 4, 1, 35.00, 35.00, 'Transferência Bancária', 129),
('2025-06-18', 1, 3, 25.00, 75.00, 'Cartão de Débito', 130),
('2025-07-22', 2, 4, 30.00, 120.00, 'Cartão de Crédito', 131),
('2025-08-10', 3, 2, 40.00, 80.00, 'PayPal', 132),
('2025-09-05', 4, 3, 35.00, 105.00, 'Boleto Bancário', 133),
('2025-10-14', 1, 4, 25.00, 100.00, 'Transferência Bancária', 134),
('2025-11-20', 2, 2, 30.00, 60.00, 'Cartão de Débito', 135),
('2025-12-08', 3, 3, 40.00, 120.00, 'Cartão de Crédito', 136),
('2026-01-17', 4, 2, 35.00, 70.00, 'PayPal', 137),
('2026-02-25', 1, 5, 25.00, 125.00, 'Boleto Bancário', 138),
('2026-03-12', 2, 3, 30.00, 90.00, 'Transferência Bancária', 139),
('2026-04-05', 3, 2, 40.00, 80.00, 'Cartão de Débito', 140);

INSERT INTO LIVROS (nome, autor, editora) VALUES
('1984', 'George Orwell', 'Companhia Editora Nacional'),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Gallimard'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Bloomsbury'),
('Cem Anos de Solidão', 'Gabriel García Márquez', 'Editora Record'),
('O Senhor dos Anéis', 'J.R.R. Tolkien', 'HarperCollins'),
('Dom Quixote', 'Miguel de Cervantes', 'Real Academia Española'),
('A Revolução dos Bichos', 'George Orwell', 'Companhia Editora Nacional'),
('Crime e Castigo', 'Fiódor Dostoiévski', 'Editora 34'),
('O Alquimista', 'Paulo Coelho', 'Editora Rocco'),
('A Menina que Roubava Livros', 'Markus Zusak', 'Intrínseca'),
('A Metamorfose', 'Franz Kafka', 'L&PM Editores'),
('O Diário de Anne Frank', 'Anne Frank', 'Editora Record'),
('1984', 'George Orwell', 'Companhia Editora Nacional'),
('O Hobbit', 'J.R.R. Tolkien', 'HarperCollins'),
('O Nome do Vento', 'Patrick Rothfuss', 'Arqueiro'),
('A Culpa é das Estrelas', 'John Green', 'Intrínseca'),
('Sapiens: Uma Breve História da Humanidade', 'Yuval Noah Harari', 'L&PM Editores'),
('O Poder do Hábito', 'Charles Duhigg', 'Objetiva'),
('As Crônicas de Nárnia', 'C.S. Lewis', 'WMF Martins Fontes'),
('Fahrenheit 451', 'Ray Bradbury', 'Bantam Books');

SELECT * FROM LIVROS;10 Desafio:
1-Criar uma coluna com valores padrão(Default)
2-Dropar 3 coluna
3-Renomear 1 tabela
4-Criar uma FK(Foreign Key)
5-Usar o set em 3 novas tabela que sera criada
6-Definir o Fk em uma das tabelas sem usar o Alter Table, usar dentro do CREATE TABLE
7-Quero que você usa outras tipos de dados nas tabelas
8-Criar uma view(é igual uma tabela)
9-Quero que faça um UPDATE em valores que sejam iguais em uma coluna
10-usar apenas o w3school(https://www.w3schools.com/mysql/default.asp) e quero uma documentação("redação") de como foi e explicando cada tipo de dados e funções


#########Tudo isso até dia 14/01##############
########Evitar de usar outros tipos de site ou pedir minha ajuda########

INSERT INTO LIVROS (nome, autor, editora) VALUES
('A Metamorfose', 'Franz Kafka', 'L&PM Editores'),
('O Diário de Anne Frank', 'Anne Frank', 'Editora Record'),
('1984', 'George Orwell', 'Companhia Editora Nacional'),
('O Hobbit', 'J.R.R. Tolkien', 'HarperCollins'),
('O Nome do Vento', 'Patrick Rothfuss', 'Arqueiro'),
('A Culpa é das Estrelas', 'John Green', 'Intrínseca'),
('Sapiens: Uma Breve História da Humanidade', 'Yuval Noah Harari', 'L&PM Editores'),
('O Poder do Hábito', 'Charles Duhigg', 'Objetiva'),
('As Crônicas de Nárnia', 'C.S. Lewis', 'WMF Martins Fontes'),
('Fahrenheit 451', 'Ray Bradbury', 'Bantam Books'),
('A Coragem de Ser Imperfeito', 'Brené Brown', 'Sextante'),
('Maus', 'Art Spiegelman', 'Companhia das Letras'),
('O Fim da Eternidade', 'Isaac Asimov', 'Aleph'),
('A Dança da Morte', 'Stephen King', 'Suma'),
('Os Três Mosqueteiros', 'Alexandre Dumas', 'Martin Claret'),
('Anna e o Beijo Francês', 'Stephanie Perkins', 'Novo Conceito'),
('O Médico e o Monstro', 'Robert Louis Stevenson', 'Martin Claret'),
('O Sol é para Todos', 'Harper Lee', 'José Olympio'),
('Cinquenta Tons de Cinza', 'E.L. James', 'Intrínseca'),
('Capitães da Areia', 'Jorge Amado', 'Companhia de Bolso');

INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Lima', '83.336.079/4703-69', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Alves', '79.077.245/2270-14', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Oliveira', '23.530.691/1864-31', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Ribeiro', '16.819.878/8477-40', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Isabella Ferreira', '13.540.254/0054-01', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Martins', '56.810.329/2016-74', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur Gasparino', '21.986.992/9140-19', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Pinto', '36.366.647/1030-22', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur Pereira', '47.303.810/9741-25', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Ferreira', '87.121.838/2547-78', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Ferreira', '23.108.309/0331-32', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Lima', '07.169.615/2754-27', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Moura', '61.593.070/9133-41', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Costa', '54.751.416/6500-28', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Carvalho', '93.001.477/7129-79', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Herinque', '34.294.632/3099-44', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Sousa', '80.644.912/4761-44', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Isabella Dias', '72.443.350/6325-58', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Ribeiro', '75.231.581/5371-95', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luca Mendes', '80.161.230/5030-10', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Isabella Oliveira', '26.716.865/2259-64', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Santos', '90.363.912/1220-29', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Almeida', '75.408.740/9537-56', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Barreto', '49.094.050/5554-81', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Sousa', '40.758.576/8444-88', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Mendes', '44.924.837/2495-42', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Ana Sousa', '90.085.524/2164-80', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Borges', '47.580.856/9616-51', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Rodrigues', '62.809.801/5367-08', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Ribeiro', '15.398.520/7055-90', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Faria', '10.421.530/9146-00', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Silva', '09.190.818/6135-59', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Ana Rodrigues', '80.914.368/7312-84', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Davi Ribeiro', '40.529.003/0684-65', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Moura', '69.200.026/6215-43', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago De Costa', '68.286.909/4979-35', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur Gasparino', '22.762.689/2023-28', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Victor Gasparino', '60.902.541/3245-54', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela De Costa', '22.748.244/6727-13', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Monteiro', '07.967.372/8514-29', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Ribeiro', '51.747.566/2989-00', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Oliveira', '10.889.261/0012-41', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Rodrigues', '65.558.151/5969-52', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Ferreira', '89.588.814/1217-99', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie De Costa', '94.257.677/4419-20', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophia Gomes', '51.305.955/4979-78', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sabrina Alves', '66.644.999/7997-89', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Thiago Lima', '94.247.964/7233-00', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Fernando Monteiro', '56.736.919/5434-09', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Monteiro', '20.841.836/2782-19', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Pereira', '48.771.161/7607-32', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Barros', '77.942.665/7624-48', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Barros', '92.715.114/8468-54', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Claudio Silva', '54.036.925/6459-07', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sabrina Moura', '44.740.624/5387-27', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Mendes', '99.191.269/0090-71', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophia Gonçalves', '42.175.236/8623-37', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Costa', '30.280.673/0222-27', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Gasparino', '16.525.177/8424-37', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Oliveira', '97.779.811/0663-71', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Santana', '53.465.455/0059-13', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Alves', '54.876.821/9837-76', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Oliveira', '77.438.523/9988-58', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Claudio Alves', '32.321.550/3764-12', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Barreto', '84.613.058/3120-40', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Rodrigues', '47.723.001/1958-00', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helloisa De Costa', '48.191.801/0921-51', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Monteiro', '62.122.891/8671-10', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Monteiro', '73.555.768/2694-60', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Alves', '00.993.447/9545-58', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Monteiro', '87.730.698/0279-99', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helloisa Ferreira', '49.335.006/6505-22', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Oliveira', '84.473.051/5697-00', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Almeida', '29.472.678/3072-87', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Sousa', '27.426.024/2529-03', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Pereira', '79.477.045/5440-36', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Mendes', '63.628.348/6167-89', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Moura', '02.787.537/8423-16', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Barreto', '16.626.537/5518-32', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur De Costa', '83.913.210/5710-34', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sabrina Gonçalves', '41.945.767/9468-83', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Laura Martins', '49.463.743/5827-87', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Monteiro', '03.380.123/0217-25', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Herinque', '21.666.358/6487-23', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Rodrigues', '33.830.010/9418-75', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Pereira', '91.611.174/9280-20', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Borges', '65.157.292/2292-25', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Silva', '17.548.922/6880-15', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Santana', '51.316.192/6604-57', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Borges', '44.750.751/3187-63', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Claudio Barreto', '36.982.333/7537-19', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Sousa', '77.146.972/3323-56', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Dias', '72.771.962/9655-95', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Silva', '72.012.291/8321-28', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Almeida', '98.086.642/0743-34', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Miguel Pinto', '03.796.473/5656-60', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Silva', '09.807.620/0062-25', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Rodrigues', '35.641.176/0646-18', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Alves', '03.765.130/3291-68', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Borges', '58.325.088/5436-24', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Barreto', '57.432.561/2052-69', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Rodrigues', '40.928.074/7193-45', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Victor Santos', '79.602.286/7802-22', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Oliveira', '32.050.458/0645-85', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Paloma Carvalho', '08.414.639/2977-97', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Rafael Herinque', '20.998.251/0760-72', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Gasparino', '83.329.940/6844-26', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Ribeiro', '48.631.129/3066-62', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Claudio Gomes', '92.300.294/9048-89', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Victor Alves', '70.943.863/1722-20', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Silva', '82.998.915/7545-53', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Carvalho', '95.539.435/5263-28', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Ferreira', '44.516.698/3814-35', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Alves', '05.610.146/5077-99', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Borges', '47.084.721/1691-14', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Ribeiro', '40.928.300/6498-43', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Mario Gasparino', '01.155.420/5722-66', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Gomes', '40.128.108/6313-52', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Moura', '95.315.351/8254-27', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Faria', '15.481.379/0666-06', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Carvalho', '05.963.172/9986-04', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Carvalho', '13.096.814/3318-41', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Rafael Monteiro', '45.711.268/1288-33', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Dias', '10.470.106/9022-28', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Santana', '01.174.296/7107-66', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Claudio Alves', '06.653.108/9995-82', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Almeida', '04.530.893/9512-53', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa De Costa', '63.895.077/8670-98', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Ribeiro', '84.893.026/3069-38', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Sousa', '45.043.502/4126-70', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Ribeiro', '89.114.057/0318-12', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophia Oliveira', '67.817.165/7711-29', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Isabella Gasparino', '00.379.771/1891-48', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Laura Borges', '54.588.593/7726-86', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Barros', '72.033.577/4504-50', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Victor Monteiro', '39.701.182/8966-60', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Rafael Rodrigues', '34.472.665/2501-56', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Davi Carvalho', '19.163.836/7073-56', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Paloma Ribeiro', '27.704.369/8468-76', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Almeida', '97.219.266/5883-53', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Oliveira', '62.995.261/5685-34', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Monteiro', '34.626.397/4159-80', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Gomes', '45.456.683/9551-72', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Alves', '09.444.805/2180-30', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Mendes', '60.170.233/4855-59', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Davi Herinque', '62.525.716/4993-32', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Rafael Almeida', '38.127.851/6667-09', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Gonçalves', '06.688.310/9632-92', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Costa', '40.377.370/2470-40', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Barreto', '22.127.312/3690-66', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Silva', '90.411.407/2340-39', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Dias', '60.156.258/3597-88', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helloisa Faria', '73.165.628/6022-36', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Barros', '85.080.989/3988-75', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Fernando Pereira', '62.588.059/5852-05', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Barros', '76.562.655/4197-68', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Moura', '20.025.650/0427-78', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Oliveira', '10.205.709/8955-59', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Costa', '26.194.460/8427-90', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Santos', '05.858.519/7712-81', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Gomes', '91.677.925/7992-79', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Mario Santos', '19.068.342/9451-81', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Gomes', '57.991.311/5083-81', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Lima', '20.254.392/5195-28', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Ana Silva', '59.552.175/0437-67', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Santana', '48.095.995/8749-87', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Faria', '67.853.270/1052-08', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Pereira', '02.848.952/3885-44', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Silva', '71.319.223/6297-00', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Barreto', '45.593.106/8992-53', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Martins', '20.536.386/8645-29', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Ribeiro', '08.886.846/2655-55', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Monteiro', '43.942.653/8093-41', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Martins', '23.557.849/1906-60', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Mendes', '96.014.794/4059-94', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Faria', '73.090.073/3184-45', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helloisa Santana', '47.036.906/7559-96', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Sousa', '43.077.527/2504-78', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro De Costa', '40.624.436/5642-46', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Moura', '59.787.591/2419-36', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Gasparino', '28.752.183/7627-72', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Laura Mendes', '29.436.285/7490-75', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luca De Costa', '82.808.944/4285-04', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Mario Costa', '95.080.504/9902-23', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Sousa', '48.773.352/2199-10', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Costa', '45.445.389/6224-30', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Ferreira', '36.264.978/2384-25', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Costa', '21.818.974/3990-92', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Herinque', '42.121.044/2825-46', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Borges', '57.543.553/0956-21', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Alves', '87.171.244/5816-96', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Gonçalves', '82.841.421/3815-55', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Herinque', '18.155.181/7350-02', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luca Pinto', '19.969.812/7205-11', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Davi Gomes', '39.750.019/7376-92', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Rodrigues', '76.130.593/2391-04', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Alves', '76.646.282/0106-38', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Mario Alves', '89.673.454/6237-18', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Carvalho', '48.871.710/3583-37', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Pinto', '43.906.545/6942-59', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Gomes', '41.930.335/6395-12', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Carvalho', '29.570.172/9559-93', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Gonçalves', '38.337.397/2710-04', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Isabella Dias', '50.935.227/2674-19', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Mendes', '67.606.745/9779-72', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Fernando Monteiro', '42.692.789/1456-86', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur Carvalho', '47.728.891/2572-01', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Gomes', '05.975.237/3029-71', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Gasparino', '81.703.155/1799-87', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Sousa', '09.387.774/5931-82', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophia Silva', '33.061.752/4750-22', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Gomes', '57.608.639/2521-78', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Ana Rodrigues', '13.439.138/4231-81', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Lima', '26.192.186/5000-32', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Paloma Barreto', '89.544.390/3481-86', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Sousa', '15.271.506/8761-45', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Faria', '34.715.326/8110-58', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Martins', '02.017.186/2917-22', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Santana', '53.564.036/4574-31', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Herinque', '21.945.193/0594-12', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Silva', '83.406.695/8017-13', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Lima', '13.208.182/4015-88', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helloisa Pinto', '18.808.054/8739-77', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sabrina Barros', '64.021.264/4884-23', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Rafael Santos', '72.988.283/1551-84', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Santos', '25.225.562/1980-22', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Costa', '18.498.989/2117-86', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Thiago Mendes', '90.719.421/4562-27', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Gomes', '15.288.497/3875-46', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur Sousa', '97.316.695/7902-59', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Paloma Gomes', '40.177.461/1973-04', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Ferreira', '45.673.084/3176-02', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Gomes', '15.218.087/6034-02', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Costa', '91.045.076/5170-66', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Thiago Herinque', '19.437.298/7049-55', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Ribeiro', '90.335.993/8607-03', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Faria', '19.750.285/8168-48', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Faria', '45.281.160/2997-51', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Santos', '33.026.473/6382-90', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Mario Monteiro', '37.957.522/7835-83', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Oliveira', '58.921.284/3094-25', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophia Sousa', '74.904.204/5698-66', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Barreto', '03.369.611/6391-47', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Costa', '91.952.824/5601-41', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Dias', '81.832.476/1304-49', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Barros', '29.261.275/7447-44', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Gonçalves', '10.237.254/0370-18', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Paloma Almeida', '56.982.657/8798-01', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Almeida', '80.607.981/3041-81', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Davi Martins', '60.991.774/6181-59', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Martins', '99.797.447/2110-42', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Almeida', '56.799.015/5909-97', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Laura Santana', '82.406.062/9365-77', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Costa', '79.285.941/8702-32', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Pereira', '94.475.721/4730-62', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Lima', '83.336.079/4703-69', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Alves', '79.077.245/2270-14', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Oliveira', '23.530.691/1864-31', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Ribeiro', '16.819.878/8477-40', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Isabella Ferreira', '13.540.254/0054-01', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Martins', '56.810.329/2016-74', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur Gasparino', '21.986.992/9140-19', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Pinto', '36.366.647/1030-22', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur Pereira', '47.303.810/9741-25', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Ferreira', '87.121.838/2547-78', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Ferreira', '23.108.309/0331-32', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Lima', '07.169.615/2754-27', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Moura', '61.593.070/9133-41', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Costa', '54.751.416/6500-28', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Carvalho', '93.001.477/7129-79', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Herinque', '34.294.632/3099-44', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Sousa', '80.644.912/4761-44', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Isabella Dias', '72.443.350/6325-58', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Ribeiro', '75.231.581/5371-95', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luca Mendes', '80.161.230/5030-10', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Isabella Oliveira', '26.716.865/2259-64', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Santos', '90.363.912/1220-29', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Almeida', '75.408.740/9537-56', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Barreto', '49.094.050/5554-81', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Sousa', '40.758.576/8444-88', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Mendes', '44.924.837/2495-42', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Ana Sousa', '90.085.524/2164-80', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Borges', '47.580.856/9616-51', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Rodrigues', '62.809.801/5367-08', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Ribeiro', '15.398.520/7055-90', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Faria', '10.421.530/9146-00', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Silva', '09.190.818/6135-59', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Ana Rodrigues', '80.914.368/7312-84', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Davi Ribeiro', '40.529.003/0684-65', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Moura', '69.200.026/6215-43', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago De Costa', '68.286.909/4979-35', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur Gasparino', '22.762.689/2023-28', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Victor Gasparino', '60.902.541/3245-54', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela De Costa', '22.748.244/6727-13', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Monteiro', '07.967.372/8514-29', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Ribeiro', '51.747.566/2989-00', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Oliveira', '10.889.261/0012-41', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Rodrigues', '65.558.151/5969-52', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Ferreira', '89.588.814/1217-99', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie De Costa', '94.257.677/4419-20', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophia Gomes', '51.305.955/4979-78', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sabrina Alves', '66.644.999/7997-89', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Thiago Lima', '94.247.964/7233-00', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Fernando Monteiro', '56.736.919/5434-09', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Monteiro', '20.841.836/2782-19', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Pereira', '48.771.161/7607-32', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Barros', '77.942.665/7624-48', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Barros', '92.715.114/8468-54', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Claudio Silva', '54.036.925/6459-07', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sabrina Moura', '44.740.624/5387-27', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Mendes', '99.191.269/0090-71', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophia Gonçalves', '42.175.236/8623-37', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Costa', '30.280.673/0222-27', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Gasparino', '16.525.177/8424-37', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Oliveira', '97.779.811/0663-71', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Santana', '53.465.455/0059-13', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Alves', '54.876.821/9837-76', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Oliveira', '77.438.523/9988-58', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Claudio Alves', '32.321.550/3764-12', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Barreto', '84.613.058/3120-40', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Rodrigues', '47.723.001/1958-00', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helloisa De Costa', '48.191.801/0921-51', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Monteiro', '62.122.891/8671-10', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Monteiro', '73.555.768/2694-60', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Alves', '00.993.447/9545-58', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Monteiro', '87.730.698/0279-99', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helloisa Ferreira', '49.335.006/6505-22', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Oliveira', '84.473.051/5697-00', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Almeida', '29.472.678/3072-87', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Sousa', '27.426.024/2529-03', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Pereira', '79.477.045/5440-36', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Mendes', '63.628.348/6167-89', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Moura', '02.787.537/8423-16', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Barreto', '16.626.537/5518-32', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur De Costa', '83.913.210/5710-34', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sabrina Gonçalves', '41.945.767/9468-83', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Laura Martins', '49.463.743/5827-87', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Monteiro', '03.380.123/0217-25', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Herinque', '21.666.358/6487-23', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Rodrigues', '33.830.010/9418-75', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Pereira', '91.611.174/9280-20', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Borges', '65.157.292/2292-25', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Silva', '17.548.922/6880-15', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Santana', '51.316.192/6604-57', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Borges', '44.750.751/3187-63', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Claudio Barreto', '36.982.333/7537-19', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Sousa', '77.146.972/3323-56', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Dias', '72.771.962/9655-95', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Silva', '72.012.291/8321-28', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Almeida', '98.086.642/0743-34', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Miguel Pinto', '03.796.473/5656-60', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Silva', '09.807.620/0062-25', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Rodrigues', '35.641.176/0646-18', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Alves', '03.765.130/3291-68', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Borges', '58.325.088/5436-24', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Barreto', '57.432.561/2052-69', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Rodrigues', '40.928.074/7193-45', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Victor Santos', '79.602.286/7802-22', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Oliveira', '32.050.458/0645-85', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Paloma Carvalho', '08.414.639/2977-97', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Rafael Herinque', '20.998.251/0760-72', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Gasparino', '83.329.940/6844-26', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Ribeiro', '48.631.129/3066-62', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Claudio Gomes', '92.300.294/9048-89', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Victor Alves', '70.943.863/1722-20', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Silva', '82.998.915/7545-53', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Carvalho', '95.539.435/5263-28', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Ferreira', '44.516.698/3814-35', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Alves', '05.610.146/5077-99', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Borges', '47.084.721/1691-14', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Ribeiro', '40.928.300/6498-43', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Mario Gasparino', '01.155.420/5722-66', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Gomes', '40.128.108/6313-52', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Moura', '95.315.351/8254-27', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Faria', '15.481.379/0666-06', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Carvalho', '05.963.172/9986-04', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Carvalho', '13.096.814/3318-41', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Rafael Monteiro', '45.711.268/1288-33', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Dias', '10.470.106/9022-28', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Santana', '01.174.296/7107-66', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Claudio Alves', '06.653.108/9995-82', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Almeida', '04.530.893/9512-53', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa De Costa', '63.895.077/8670-98', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Ribeiro', '84.893.026/3069-38', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Sousa', '45.043.502/4126-70', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Ribeiro', '89.114.057/0318-12', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophia Oliveira', '67.817.165/7711-29', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Isabella Gasparino', '00.379.771/1891-48', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Laura Borges', '54.588.593/7726-86', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Barros', '72.033.577/4504-50', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Victor Monteiro', '39.701.182/8966-60', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Rafael Rodrigues', '34.472.665/2501-56', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Davi Carvalho', '19.163.836/7073-56', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Paloma Ribeiro', '27.704.369/8468-76', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Almeida', '97.219.266/5883-53', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Oliveira', '62.995.261/5685-34', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Monteiro', '34.626.397/4159-80', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Gomes', '45.456.683/9551-72', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Alves', '09.444.805/2180-30', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Mendes', '60.170.233/4855-59', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Davi Herinque', '62.525.716/4993-32', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Rafael Almeida', '38.127.851/6667-09', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Gonçalves', '06.688.310/9632-92', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Costa', '40.377.370/2470-40', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Barreto', '22.127.312/3690-66', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Silva', '90.411.407/2340-39', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Dias', '60.156.258/3597-88', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helloisa Faria', '73.165.628/6022-36', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Barros', '85.080.989/3988-75', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Fernando Pereira', '62.588.059/5852-05', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Barros', '76.562.655/4197-68', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Moura', '20.025.650/0427-78', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Oliveira', '10.205.709/8955-59', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Costa', '26.194.460/8427-90', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Santos', '05.858.519/7712-81', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Gomes', '91.677.925/7992-79', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Mario Santos', '19.068.342/9451-81', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Gomes', '57.991.311/5083-81', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Lima', '20.254.392/5195-28', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Ana Silva', '59.552.175/0437-67', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Santana', '48.095.995/8749-87', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Faria', '67.853.270/1052-08', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Pereira', '02.848.952/3885-44', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Silva', '71.319.223/6297-00', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('José Barreto', '45.593.106/8992-53', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Martins', '20.536.386/8645-29', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Ribeiro', '08.886.846/2655-55', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Monteiro', '43.942.653/8093-41', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Martins', '23.557.849/1906-60', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Mendes', '96.014.794/4059-94', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Faria', '73.090.073/3184-45', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helloisa Santana', '47.036.906/7559-96', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Sousa', '43.077.527/2504-78', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro De Costa', '40.624.436/5642-46', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Moura', '59.787.591/2419-36', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Gasparino', '28.752.183/7627-72', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Laura Mendes', '29.436.285/7490-75', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luca De Costa', '82.808.944/4285-04', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Mario Costa', '95.080.504/9902-23', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Sousa', '48.773.352/2199-10', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Costa', '45.445.389/6224-30', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Ferreira', '36.264.978/2384-25', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Costa', '21.818.974/3990-92', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Herinque', '42.121.044/2825-46', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Borges', '57.543.553/0956-21', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Alves', '87.171.244/5816-96', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Julia Gonçalves', '82.841.421/3815-55', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helena Herinque', '18.155.181/7350-02', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luca Pinto', '19.969.812/7205-11', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Davi Gomes', '39.750.019/7376-92', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Rodrigues', '76.130.593/2391-04', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Alves', '76.646.282/0106-38', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Mario Alves', '89.673.454/6237-18', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Carvalho', '48.871.710/3583-37', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Pinto', '43.906.545/6942-59', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Gomes', '41.930.335/6395-12', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Carvalho', '29.570.172/9559-93', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Gonçalves', '38.337.397/2710-04', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Isabella Dias', '50.935.227/2674-19', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Mendes', '67.606.745/9779-72', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Fernando Monteiro', '42.692.789/1456-86', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur Carvalho', '47.728.891/2572-01', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Gomes', '05.975.237/3029-71', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Gasparino', '81.703.155/1799-87', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Sousa', '09.387.774/5931-82', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophia Silva', '33.061.752/4750-22', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Gomes', '57.608.639/2521-78', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Ana Rodrigues', '13.439.138/4231-81', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pedro Lima', '26.192.186/5000-32', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Paloma Barreto', '89.544.390/3481-86', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Palloma Sousa', '15.271.506/8761-45', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Faria', '34.715.326/8110-58', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Pietro Martins', '02.017.186/2917-22', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Luana Santana', '53.564.036/4574-31', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Herinque', '21.945.193/0594-12', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Silva', '83.406.695/8017-13', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Lima', '13.208.182/4015-88', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Helloisa Pinto', '18.808.054/8739-77', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sabrina Barros', '64.021.264/4884-23', 'Empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Rafael Santos', '72.988.283/1551-84', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Santos', '25.225.562/1980-22', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Maria Costa', '18.498.989/2117-86', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Thiago Mendes', '90.719.421/4562-27', 'Empresa C');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Heitor Gomes', '15.288.497/3875-46', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Arthur Sousa', '97.316.695/7902-59', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Paloma Gomes', '40.177.461/1973-04', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Wagner Ferreira', '45.673.084/3176-02', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Gomes', '15.218.087/6034-02', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Costa', '91.045.076/5170-66', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Thiago Herinque', '19.437.298/7049-55', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leonardo Ribeiro', '90.335.993/8607-03', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Faria', '19.750.285/8168-48', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Faria', '45.281.160/2997-51', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Bernardo Santos', '33.026.473/6382-90', 'Empresa F');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Mario Monteiro', '37.957.522/7835-83', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Oliveira', '58.921.284/3094-25', 'Empresa I');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophia Sousa', '74.904.204/5698-66', 'Empresa J');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Tiago Barreto', '03.369.611/6391-47', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Costa', '91.952.824/5601-41', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Manuela Dias', '81.832.476/1304-49', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Sophie Barros', '29.261.275/7447-44', 'Empresa H');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Larissa Gonçalves', '10.237.254/0370-18', 'Empresa E');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Paloma Almeida', '56.982.657/8798-01', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Camila Almeida', '80.607.981/3041-81', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Davi Martins', '60.991.774/6181-59', 'Empresa G');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Lucas Martins', '99.797.447/2110-42', 'Empresa A');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Leandro Almeida', '56.799.015/5909-97', 'empresa D');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('Laura Santana', '82.406.062/9365-77', 'Empresa B');
INSERT INTO Cliente (nome, cnpj, empresa) VALUES ('João Costa', '79.285.941/8702-32', 'Empresa A');


CREATE VIEW QUANTIDADE AS
SELECT vl.id, l.nome AS nome_livro, vl.quantidade
FROM vendaslivros vl
JOIN livros l ON vl.livro_id = l.id;
