package br.com.gft.entities;

import javax.persistence.*;

@Entity
@Table(name = "produtotipo")
public class TipoProduto {

    @Id
    private Long produtoTipo_id;
    private String produtoTipo;

}
