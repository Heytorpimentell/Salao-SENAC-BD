-- Lista o nome e CPF dos funcionários e os respectivos números de telefone.
SELECT f.nome AS Nome_Funcionario, f.cpf AS CPF_Funcionario, t.numero AS Telefone
FROM tbl_funcionario f
LEFT JOIN tbl_telefone t ON f.cpf = t.funcionario_cpf;

-- Mostra a especialidade dos profissionais e quantos existem em cada uma delas.
SELECT p.especialidade, COUNT(*) AS Quantidade
FROM tbl_profissional p
GROUP BY p.especialidade;

-- Mostra os clientes com seus respectivos endereços.
SELECT c.nome AS Nome_Cliente, e.uf, e.cidade, e.bairro, e.rua, e.numero
FROM tbl_cliente c
LEFT JOIN tbl_endereco e ON c.cpf = e.cliente_cpf;

-- Lista os clientes que têm ao menos um telefone associado.
SELECT c.nome AS Nome_Cliente, t.numero AS Telefone
FROM tbl_cliente c
JOIN tbl_telefone t ON c.cpf = t.cliente_cpf;

-- Conta quantos serviços cada funcionário realizou.
SELECT f.nome AS Nome_Funcionario, COUNT(rs.idregistroServico) AS Servicos_Realizados
FROM tbl_funcionario f
LEFT JOIN tbl_registroServico rs ON f.cpf = rs.funcionario_cpf
GROUP BY f.nome;

-- Lista os dependentes vinculados a cada funcionário.
SELECT f.nome AS Nome_Funcionario, df.nome AS Nome_Dependente, df.parentesco
FROM tbl_funcionario f
JOIN tbl_dependenteFuncionario df ON f.cpf = df.funcionario_cpf;

-- Mostra quantos dependentes cada funcionário possui.
SELECT f.nome AS Nome_Funcionario, COUNT(df.cpf) AS Quantidade_Dependentes
FROM tbl_funcionario f
LEFT JOIN tbl_dependenteFuncionario df ON f.cpf = df.funcionario_cpf
GROUP BY f.nome;

-- Calcula o salário total de funcionários com base no estado civil.
SELECT estadoCivil, SUM(salario) AS Salario_Total
FROM tbl_funcionario
GROUP BY estadoCivil;

-- Mostra os três funcionários que possuem os maiores salários.
SELECT nome AS Nome_Funcionario, salario
FROM tbl_funcionario
ORDER BY salario DESC
LIMIT 3;

-- Calcula o total de valores pagos, agrupados pelo tipo de pagamento.
SELECT tipo AS Tipo_Pagamento, SUM(valorPago) AS Total_Valor_Pago
FROM tbl_formPag
GROUP BY tipo;

-- Lista os serviços e os valores pagos por cada um.
SELECT rs.tipoServico, fp.valorPago
FROM tbl_registroServico rs
JOIN tbl_formPag fp ON rs.idregistroServico = fp.registroServico_idregistroServico;

-- Mostra os profissionais e os endereços onde estão registrados.
SELECT p.nome AS Nome_Profissional, e.uf, e.cidade, e.bairro, e.rua, e.numero
FROM tbl_profissional p
LEFT JOIN tbl_endereco e ON p.cpf = e.profissional_cpf;

-- Calcula a média das comissões atribuídas aos funcionários.
SELECT AVG(comissao) AS Comissao_Media
FROM tbl_funcionario;



-- Mostra a quantidade de serviços realizados por cada profissional.
SELECT p.nome AS Nome_Profissional, COUNT(rs.idregistroServico) AS Servicos_Realizados
FROM tbl_profissional p
LEFT JOIN tbl_registroServico rs ON p.cpf = rs.funcionario_cpf
GROUP BY p.nome;
-- Organizar as tabelas PROFISSIONAL e REGISTROSERVICO

-- Conta quantos serviços foram associados a cada cliente.
SELECT c.nome AS Nome_Cliente, COUNT(rs.idregistroServico) AS Servicos_Realizados
FROM tbl_cliente c
LEFT JOIN tbl_registroServico rs ON c.cpf = rs.funcionario_cpf
GROUP BY c.nome;
-- Organizar as tabelas FUNCIONARIOS e REGISTROSERVICO


