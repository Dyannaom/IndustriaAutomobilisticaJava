package br.com.gft.entities;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;

@Getter @Setter
@NoArgsConstructor
@ToString
@AllArgsConstructor
@RequiredArgsConstructor()
@Entity
public class Endereco {

    @Id
    private Long id;

    private String cep;
    private String complemento;

}
