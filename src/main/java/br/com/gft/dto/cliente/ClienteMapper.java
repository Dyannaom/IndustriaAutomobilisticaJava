package br.com.gft.dto.cliente;

import br.com.gft.dto.endereco.EnderecoMapper;
import br.com.gft.entities.Cliente;


public class ClienteMapper {
	
	public static Cliente fromDTO(RegistroClienteDTO dto) {
		return new Cliente(null, dto.getNome(), dto.getCpf(), EnderecoMapper.fromDTO(dto.getEndereco()));

	}
	
	
	public static ConsultaClienteDTO fromEntity(Cliente cliente) {
		return new ConsultaClienteDTO(cliente.getId(), cliente.getNome(), cliente.getCpf(),
				EnderecoMapper.fromEntity(cliente.getEndereco()));
		
	}
	
}
