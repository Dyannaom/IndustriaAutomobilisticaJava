package br.com.gft.entities;

import javax.persistence.*;
import java.math.BigDecimal;

@MappedSuperclass
public abstract class Produto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;
    private BigDecimal valorVenda;
    private BigDecimal valorCusto;
    @ManyToMany
    private Fornecedor fornecedor;

}
