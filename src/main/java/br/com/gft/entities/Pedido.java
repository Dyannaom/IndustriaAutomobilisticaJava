package br.com.gft.entities;

import javax.persistence.*;
import java.math.BigDecimal;

@MappedSuperclass
public abstract class Pedido {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private BigDecimal valorTotal;


}
