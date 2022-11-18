package br.com.gft.dto.cliente;

import br.com.gft.dto.endereco.EnderecoDTO;

public class ConsultaClienteDTO {
	
	private Long id;
    private String nome;
    private String cpf;
    private EnderecoDTO endereco;
    
    
	public ConsultaClienteDTO() {
	}


	public ConsultaClienteDTO(Long id, String nome, String cpf, EnderecoDTO endereco) {
		this.id = id;
		this.nome = nome;
		this.cpf = cpf;
		this.endereco = endereco;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getCpf() {
		return cpf;
	}


	public void setCpf(String cpf) {
		this.cpf = cpf;
	}


	public EnderecoDTO getEndereco() {
		return endereco;
	}


	public void setEndereco(EnderecoDTO endereco) {
		this.endereco = endereco;
	}
    
    
    

}
