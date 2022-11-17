package br.com.gft.entities;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Entity
@Table(name = "tb_produto")
public class Produto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long produto_id;
    private String nome;
    private BigDecimal valorVenda;
    private BigDecimal valorCusto;
    @ManyToMany
    private List<Fornecedor> fornecedor;
    @ManyToOne
    private Estoque estoque;


}
