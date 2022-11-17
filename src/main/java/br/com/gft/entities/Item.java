package br.com.gft.entities;

import javax.persistence.*;
import java.math.BigDecimal;

@MappedSuperclass
public abstract class Item {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToOne
    private Produto produto;
    private int quantidade;

}
