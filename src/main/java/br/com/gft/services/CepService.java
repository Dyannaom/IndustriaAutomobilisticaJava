package br.com.gft.services;

import br.com.gft.responses.CepResponse;
import org.springframework.stereotype.Service;

@Service
public interface CepService {

    public CepResponse getCep(String Cep) throws Exception;

}
