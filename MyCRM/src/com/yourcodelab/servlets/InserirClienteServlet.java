package com.yourcodelab.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yourcodelab.controller.ClienteController;
import com.yourcodelab.model.Cliente;

/**
 * Servlet implementation class InserirClienteServlet
 */
@WebServlet("/InserirClienteServlet")
public class InserirClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		ClienteController control = new ClienteController();
		
		//Obter parãmetros do formulário
		String nomeCompleto = request.getParameter("nomeCompleto");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String limiteCredito = request.getParameter("limiteCredito");
		
		//Instanciar objeto cliente, o limite precisa ser convertido de String para float
		Cliente c = new Cliente(new Integer(0), nomeCompleto, email, cpf, Float.parseFloat(limiteCredito));
		
		//Invocar a camada de negócio
		control.inserirCliente(c);
		
		//Obter a lista atualizada de Clientes
		List<Cliente> lista = control.listarTodos();
		
		if(lista == null)
			lista = new ArrayList<Cliente>();
		
		request.setAttribute("listaClientes", lista);
		
		String nextJSP = "/cliente/listarClientes.jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
        dispatcher.forward(request, response);
	}

}
