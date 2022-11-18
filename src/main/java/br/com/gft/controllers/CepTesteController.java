package br.com.gft.controllers;

import br.com.gft.responses.CepResponse;
import br.com.gft.services.cepService.CepService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("v1/cep")
public class CepTesteController {

    @Autowired
    private CepService cepService;

    @CrossOrigin
    @GetMapping("{cep}")
    public ResponseEntity<CepResponse> getEndereco(@PathVariable String cep ) throws Exception{
        CepResponse cepResponse = cepService.getCep(cep);
        return ResponseEntity.ok(cepResponse);
    }

}
