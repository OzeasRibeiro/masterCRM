package com.yourcodelab.controller;

import java.util.List;

import com.yourcodelab.dao.ClienteDAO;
import com.yourcodelab.model.Cliente;

public class ClienteController {
	private ClienteDAO dao = new ClienteDAO();
	
	public void inserirCliente(Cliente c){
		if(c != null)
			dao.inserir(c);
	}
	
	public List<Cliente> listarTodos(){
		return dao.listarTodos();
	}
}
