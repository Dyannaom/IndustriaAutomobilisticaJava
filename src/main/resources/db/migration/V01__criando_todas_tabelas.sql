CREATE TABLE tb_endereco (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
cep VARCHAR(8) NOT NULL,
uf VARCHAR(2),
cidade VARCHAR(255),
bairro VARCHAR(255),
logradouro VARCHAR(255),
numero VARCHAR(255),
complemento VARCHAR(255)
);

CREATE TABLE tb_cliente (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cpf VARCHAR(11) NOT NULL,
endereco_id BIGINT NOT NULL,
FOREIGN KEY(endereco_id) REFERENCES tb_endereco(id)
);

CREATE TABLE tb_fornecedor (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cnpj VARCHAR(14) NOT NULL,
pontuacao INT NOT NULL,
nacionalidade VARCHAR(255) NOT NULL,
endereco_id BIGINT NOT NULL,
FOREIGN KEY(endereco_id) REFERENCES tb_endereco(id)
);

CREATE TABLE tb_produto_peca (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
valorVenda DECIMAL(19,2) NOT NULL,
valorCusto DECIMAL(19,2) NOT NULL,
fornecedor_id BIGINT NOT NULL,
FOREIGN KEY(fornecedor_id) REFERENCES tb_fornecedor(id)
);

CREATE TABLE tb_produto_veiculo (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
valorVenda DECIMAL(19,2) NOT NULL,
valorInsumo DECIMAL(19,2) NOT NULL,
valorCusto DECIMAL(19,2) NOT NULL,
status VARCHAR(255) NOT NULL,
fornecedor_id BIGINT NOT NULL,
FOREIGN KEY(fornecedor_id) REFERENCES tb_fornecedor(id)
);

CREATE TABLE tb_compra (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
fornecedor_id BIGINT NOT NULL,
FOREIGN KEY(fornecedor_id) REFERENCES tb_fornecedor(id),
);

CREATE TABLE tb_venda (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
cliente_id BIGINT NOT NULL,
FOREIGN KEY(cliente_id) REFERENCES tb_cliente(id)
);


CREATE TABLE tb_item_compra (
id BIGINT AUTO_INCREMENT PRIMARY KEY,

produto_id BIGINT NOT NULL,
FOREIGN KEY(produto_id) REFERENCES tb_produto(id)

);

CREATE TABLE tb_item_venda (
id BIGINT AUTO_INCREMENT PRIMARY KEY,

);