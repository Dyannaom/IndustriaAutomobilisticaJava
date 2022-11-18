CREATE TABLE tb_cliente (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cpf VARCHAR(11) NOT NULL,
cep VARCHAR(255) NOT NULL,
uf VARCHAR(255) NOT NULL,
cidade VARCHAR(255) NOT NULL,
bairro VARCHAR(255) NOT NULL,
logradouro VARCHAR(255) NOT NULL,
numero VARCHAR(255) NOT NULL,
complemento VARCHAR(255)

);

CREATE TABLE tb_fornecedor (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cnpj VARCHAR(14) NOT NULL,
pontuacao INT NOT NULL,
nacionalidade VARCHAR(255) NOT NULL,
cep VARCHAR(255) NOT NULL,
uf VARCHAR(255) NOT NULL,
cidade VARCHAR(255) NOT NULL,
bairro VARCHAR(255) NOT NULL,
logradouro VARCHAR(255) NOT NULL,
numero VARCHAR(255) NOT NULL,
complemento VARCHAR(255)
);

CREATE TABLE produtoTipo (
produtoTipo_id BIGINT PRIMARY KEY,
produtoTipo VARCHAR(20)
);

INSERT INTO produtoTipo
SELECT 1, 'tb_produto_peca' UNION ALL
SELECT 2, 'tb_produto_veiculo';

CREATE TABLE tb_estoque (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
quantidade INT NOT NULL,
quantidadeMaxima INT NOT NULL,
quantidadeMinima INT NOT NULL,
valorMaximo DECIMAL(19,2) NOT NULL
);

CREATE TABLE tb_produto (
produto_id BIGINT AUTO_INCREMENT PRIMARY KEY,
produtoTipo_id BIGINT REFERENCES produtoTipo(produtoTipo_id),
nome VARCHAR(255) NOT NULL,
valorVenda DECIMAL(19,2) NOT NULL,
valorCusto DECIMAL(19,2) NOT NULL,
fornecedor_id BIGINT NOT NULL,
estoque_id BIGINT NOT NULL,
FOREIGN KEY(fornecedor_id) REFERENCES tb_fornecedor(id),
FOREIGN KEY(estoque_id) REFERENCES tb_estoque(id),
CONSTRAINT tb_produto_AltPK UNIQUE (produto_id, produtoTipo_id)
);

CREATE TABLE tb_produto_peca (
produto_id BIGINT PRIMARY KEY,
produtoTipo_id BIGINT NOT NULL DEFAULT 1 CHECK (produtoTipo_id = 1),
FOREIGN KEY(produto_id, produtoTipo_id) REFERENCES tb_produto(produto_id, produtoTipo_id)
);

CREATE TABLE tb_produto_veiculo (
produto_id BIGINT PRIMARY KEY,
produtoTipo_id BIGINT NOT NULL DEFAULT 2 CHECK (produtoTipo_id = 2),
status VARCHAR(255) NOT NULL,
valorInsumo INT NOT NULL,
fornecedor_id BIGINT NOT NULL,
FOREIGN KEY(fornecedor_id) REFERENCES tb_fornecedor(id),
FOREIGN KEY(produto_id, produtoTipo_id) REFERENCES tb_produto(produto_id, produtoTipo_id)
);


CREATE TABLE tb_compra (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
valorTotal DECIMAL(19,2) NOT NULL
);

CREATE TABLE tb_venda (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
valorTotal DECIMAL(19,2) NOT NULL
);


CREATE TABLE tb_item_compra (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
produto_id BIGINT NOT NULL,
quantidade INT NOT NULL,
compra_id BIGINT,
FOREIGN KEY(produto_id) REFERENCES tb_produto(produto_id),
FOREIGN KEY(compra_id) REFERENCES tb_compra(id)
);

CREATE TABLE tb_item_venda (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
produto_id BIGINT NOT NULL,
quantidade INT NOT NULL,
venda_id BIGINT,
FOREIGN KEY(produto_id) REFERENCES tb_produto(produto_id),
FOREIGN KEY(venda_id) REFERENCES tb_venda(id)
);