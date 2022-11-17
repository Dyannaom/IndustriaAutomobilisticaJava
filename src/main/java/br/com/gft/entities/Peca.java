package br.com.gft.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tb_produto_peca")
public class Peca extends Produto{

    private Long produto_id;
    private Long produtoTipo_id;
    @ManyToOne
    private TipoProduto produtoTipo;

}
