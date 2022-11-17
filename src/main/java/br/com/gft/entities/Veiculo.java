package br.com.gft.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tb_produto_veiculo")
public class Veiculo extends Produto{

    private Long produto_id;
    private Long produtoTipo_id;
    private String status;
    private BigDecimal valorInsumo;
    @OneToMany
    private List<Peca> pecas;

}
