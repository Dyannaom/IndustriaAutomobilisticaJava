package br.com.gft.services.cepService.impl;

import br.com.gft.responses.CepResponse;
import br.com.gft.services.CepService;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.transaction.Transactional;

@Service
@Transactional
public class CepServiceImpl implements CepService {

    @Override
    public CepResponse getCep(String cep) throws Exception {
        RestTemplate restTemplate = new RestTemplate();
        String URLAPI = "https://viacep.com.br/ws/" + cep + "/json/";
        CepResponse cepResponse = restTemplate.getForObject(URLAPI, CepResponse.class);
        return cepResponse;
    }

}
