-- Inserts

INSERT INTO tbl_profissional (cpf, especialidade, nome, email, estadoCivil, nomeSocial, dataNasc, telefone, cargaHoraria, sexo, comissao, salario)
VALUES
('12345678901', 'Cabeleireiro', 'João Silva', 'joao@gmail.com', 'Solteiro', 'Joana', '1990-05-10', '11987654321', '08:00:00', 'M', 10.00, 2500.00),
('23456789012', 'Manicure', 'Maria Santos', 'maria@gmail.com', 'Casada', NULL, '1985-02-20', '11987654322', '08:00:00', 'F', 8.50, 2300.00),
('34567890123', 'Massoterapeuta', 'José Oliveira', 'jose@gmail.com', 'Solteiro', NULL, '1988-12-10', '11987654323', '06:00:00', 'M', 12.00, 2800.00),
('45678901234', 'Barbeiro', 'Lucas Pereira', 'lucas@gmail.com', 'Casado', NULL, '1993-04-05', '11987654324', '08:00:00', 'M', 9.00, 2600.00),
('56789012345', 'Esteticista', 'Ana Lima', 'ana@gmail.com', 'Solteira', NULL, '1992-06-15', '11987654325', '08:00:00', 'F', 11.00, 2700.00),
('67890123456', 'Maquiadora', 'Clara Rocha', 'clara@gmail.com', 'Casada', NULL, '1990-11-22', '11987654326', '08:00:00', 'F', 10.00, 2500.00),
('78901234567', 'Depiladora', 'Renata Melo', 'renata@gmail.com', 'Divorciada', NULL, '1989-08-18', '11987654327', '07:00:00', 'F', 8.00, 2400.00),
('89012345678', 'Podóloga', 'Carlos Mendes', 'carlos@gmail.com', 'Solteiro', NULL, '1987-03-12', '11987654328', '06:00:00', 'M', 9.50, 2550.00),
('90123456789', 'Cabeleireiro', 'Paulo Costa', 'paulo@gmail.com', 'Casado', NULL, '1995-01-10', '11987654329', '08:00:00', 'M', 10.00, 2600.00),
('01234567890', 'Massoterapeuta', 'Fernanda Dias', 'fernanda@gmail.com', 'Viúva', NULL, '1984-09-05', '11987654330', '08:00:00', 'F', 12.00, 2800.00);

INSERT INTO tbl_cliente (cpf, nome, nomeSocial, email)
VALUES
('11111111111', 'Carla Souza', NULL, 'carla@gmail.com'),
('22222222222', 'Pedro Henrique', NULL, 'pedro@gmail.com'),
('33333333333', 'Amanda Cruz', NULL, 'amanda@gmail.com'),
('44444444444', 'Thiago Moreira', NULL, 'thiago@gmail.com'),
('55555555555', 'Juliana Silva', NULL, 'juliana@gmail.com'),
('66666666666', 'Ricardo Alves', NULL, 'ricardo@gmail.com'),
('77777777777', 'Priscila Ramos', NULL, 'priscila@gmail.com'),
('88888888888', 'Gabriel Fonseca', NULL, 'gabriel@gmail.com'),
('99999999999', 'Larissa Oliveira', NULL, 'larissa@gmail.com'),
('00000000000', 'Renato Almeida', NULL, 'renato@gmail.com');

INSERT INTO tbl_funcionario (cpf, nome, dataNasc, email, estadoCivil, cargaHoraria, sexo, salario, nomeSocial, comissao)
VALUES
('98765432101', 'Miguel Souza', '1989-07-15', 'miguel@gmail.com', 'Solteiro', '08:00:00', 'M', 3000.00, NULL, 10.00),
('87654321012', 'Sofia Mendes', '1991-03-22', 'sofia@gmail.com', 'Casada', '06:00:00', 'F', 3200.00, NULL, 12.00),
('76543210123', 'Diego Torres', '1992-05-10', 'diego@gmail.com', 'Divorciado', '07:00:00', 'M', 2800.00, NULL, 9.50),
('65432101234', 'Luiza Amaral', '1987-10-25', 'luiza@gmail.com', 'Solteira', '08:00:00', 'F', 3400.00, NULL, 11.00),
('54321012345', 'Vinicius Rocha', '1993-12-30', 'vinicius@gmail.com', 'Casado', '07:00:00', 'M', 3100.00, NULL, 10.50),
('43210123456', 'Beatriz Almeida', '1988-06-14', 'beatriz@gmail.com', 'Viúva', '08:00:00', 'F', 3500.00, NULL, 12.50),
('32101234567', 'Eduardo Ribeiro', '1986-08-09', 'eduardo@gmail.com', 'Casado', '06:00:00', 'M', 2900.00, NULL, 9.00),
('21012345678', 'Marta Silva', '1990-02-19', 'marta@gmail.com', 'Solteira', '08:00:00', 'F', 3000.00, NULL, 10.00),
('10123456789', 'Felipe Lima', '1985-11-11', 'felipe@gmail.com', 'Divorciado', '07:00:00', 'M', 2800.00, NULL, 9.50),
('01234567891', 'Camila Borges', '1994-04-07', 'camila@gmail.com', 'Casada', '08:00:00', 'F', 3200.00, NULL, 11.50);

INSERT INTO tbl_ferias (qtDia, dataInicio, dataFim, funcionario_cpf)
VALUES
(30, '2023-01-01', '2023-01-31', '98765432101'),
(15, '2023-02-01', '2023-02-15', '87654321012'),
(20, '2023-03-01', '2023-03-20', '76543210123'),
(10, '2023-04-01', '2023-04-10', '65432101234'),
(25, '2023-05-01', '2023-05-25', '54321012345'),
(15, '2023-06-01', '2023-06-15', '43210123456'),
(30, '2023-07-01', '2023-07-31', '32101234567'),
(20, '2023-08-01', '2023-08-20', '21012345678'),
(10, '2023-09-01', '2023-09-10', '10123456789'),
(25, '2023-10-01', '2023-10-25', '01234567891');

INSERT INTO tbl_dependenteFuncionario (cpf, parentesco, nome, nomeSocial, dataNasc, funcionario_cpf)
VALUES
('12312312301', 'Filho', 'Lucas Souza', NULL, '2015-05-10', '98765432101'),
('23423423402', 'Filha', 'Ana Mendes', NULL, '2017-03-20', '87654321012'),
('34534534503', 'Esposa', 'Clara Torres', NULL, '1992-08-25', '76543210123'),
('45645645604', 'Esposo', 'Carlos Amaral', NULL, '1985-10-14', '65432101234'),
('56756756705', 'Filho', 'Gabriel Rocha', NULL, '2016-01-05', '54321012345'),
('67867867806', 'Filha', 'Beatriz Almeida', NULL, '2013-07-18', '43210123456'),
('78978978907', 'Filho', 'Pedro Ribeiro', NULL, '2011-04-22', '32101234567'),
('89089089008', 'Filha', 'Marina Silva', NULL, '2010-11-30', '21012345678'),
('90190190109', 'Esposa', 'Larissa Lima', NULL, '1988-06-08', '10123456789'),
('01201201210', 'Filho', 'Eduardo Borges', NULL, '2019-09-01', '01234567891');


INSERT INTO tbl_endereco (uf, cidade, bairro, rua, cep, numero, funcionario_cpf, profissional_cpf, cliente_cpf)
VALUES
-- funcionarios
('SP', 'São Paulo', 'Centro', 'Rua A', '01001000', '100', '98765432101', NULL, NULL),
('SP', 'São Paulo', 'Moema', 'Rua B', '02002020', '200', '87654321012', NULL, NULL),
('RJ', 'Rio de Janeiro', 'Zona Sul', 'Rua C', '20020020', '300', '76543210123', NULL, NULL),
('MG', 'Belo Horizonte', 'Savassi', 'Rua D', '30130130', '400', '65432101234', NULL, NULL),
('BA', 'Salvador', 'Pelourinho', 'Rua E', '40040040', '500', '54321012345', NULL, NULL),
('RS', 'Porto Alegre', 'Moinhos', 'Rua F', '90090090', '600', '43210123456', NULL, NULL),
('CE', 'Fortaleza', 'Aldeota', 'Rua G', '60060060', '700', '32101234567', NULL, NULL),
-- profissional 
('RJ', 'Niterói', 'Icaraí', 'Rua H', '24024024', '100', NULL, '12345678901', NULL),
('SP', 'São Paulo', 'Vila Mariana', 'Rua I', '01011011', '200', NULL, '23456789012', NULL),
('PE', 'Recife', 'Boa Viagem', 'Rua J', '51051051', '300', NULL, '34567890123', NULL),
('MG', 'Belo Horizonte', 'Lourdes', 'Rua K', '30140140', '400', NULL, '45678901234', NULL),
('SC', 'Florianópolis', 'Centro', 'Rua L', '88088088', '500', NULL, '56789012345', NULL),
('PR', 'Curitiba', 'Centro Cívico', 'Rua M', '80080080', '600', NULL, '67890123456', NULL),
('BA', 'Salvador', 'Barra', 'Rua N', '40140140', '700', NULL, '78901234567', NULL),
-- cliente
('SP', 'São Paulo', 'Centro', 'Rua O', '01021021', '100', NULL, NULL, '11111111111'),
('RJ', 'Rio de Janeiro', 'Botafogo', 'Rua P', '22022022', '200', NULL, NULL, '22222222222'),
('MG', 'Belo Horizonte', 'Santa Efigênia', 'Rua Q', '30230230', '300', NULL, NULL, '33333333333'),
('PE', 'Recife', 'Pina', 'Rua R', '51151151', '400', NULL, NULL, '44444444444'),
('RS', 'Porto Alegre', 'Menino Deus', 'Rua S', '90190190', '500', NULL, NULL, '55555555555'),
('CE', 'Fortaleza', 'Dionísio Torres', 'Rua T', '60260260', '600', NULL, NULL, '66666666666'),
('AM', 'Manaus', 'Adrianópolis', 'Rua U', '69069069', '700', NULL, NULL, '77777777777');

truncate table tbl_endereco;


INSERT INTO tbl_registroServico (tipoServico, nomeCliente, nomeSocialCliente, funcionario_cpf)
VALUES
('Corte de Cabelo', 'Carla Souza', NULL, '98765432101'),
('Manicure', 'Pedro Henrique', NULL, '87654321012'),
('Massagem', 'Amanda Cruz', NULL, '76543210123'),
('Barba', 'Thiago Moreira', NULL, '65432101234'),
('Limpeza de Pele', 'Juliana Silva', NULL, '54321012345'),
('Maquiagem', 'Ricardo Alves', NULL, '43210123456'),
('Depilação', 'Priscila Ramos', NULL, '32101234567'),
('Podologia', 'Gabriel Fonseca', NULL, '21012345678'),
('Hidratação', 'Larissa Oliveira', NULL, '10123456789'),
('Alisamento', 'Renato Almeida', NULL, '01234567891');

INSERT INTO tbl_telefone (numero, funcionario_cpf, profissional_cpf, cliente_cpf)
VALUES
-- funcionários 
('11999998888', '98765432101', NULL, NULL),
('21988887777', '65432101234', NULL, NULL),
('31977776666', '54321012345', NULL, NULL),
('11966665555', '87654321012', NULL, NULL),
('21955554444', '43210123456', NULL, NULL),
('71944443333', '32101234567', NULL, NULL),
('51933332222', '76543210123', NULL, NULL),
-- profissional 
('81922221111', NULL, '12345678901', NULL),
('41911110000', NULL, '23456789012', NULL),
('85900009999', NULL, '34567890123', NULL),
('11995498888', NULL, '45678901234', NULL),
('21543887777', NULL, '56789012345', NULL),
('31977986666', NULL, '67890123456', NULL),
('11966987555', NULL, '78901234567', NULL),
-- cliente
('75695555744', NULL, NULL, '11111111111'),
('71445733433', NULL, NULL, '22222222222'),
('50312475222', NULL, NULL, '33333333333'),
('81983278111', NULL, NULL, '44444444444'),
('43242304240', NULL, NULL, '55555555555'),
('85987109999', NULL, NULL, '66666666666'),
('85900345999', NULL, NULL, '77777777777');

INSERT INTO tbl_formPag (valorPago, tipo, registroServico_idregistroServico)
VALUES
(100.00, 'Cartão de Crédito', 1),
(50.00, 'Dinheiro', 2),
(150.00, 'PIX', 3),
(80.00, 'Cartão de Débito', 4),
(120.00, 'Cartão de Crédito', 5),
(90.00, 'Dinheiro', 6),
(70.00, 'PIX', 7),
(200.00, 'Cartão de Crédito', 8),
(130.00, 'Dinheiro', 9),
(250.00, 'Cartão de Débito', 10);
