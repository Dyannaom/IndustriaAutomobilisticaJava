package br.com.gft.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "tb_venda")
public class Venda extends Pedido{

    @OneToMany(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "venda_id")
    private List<ItemVenda> itens;

}
