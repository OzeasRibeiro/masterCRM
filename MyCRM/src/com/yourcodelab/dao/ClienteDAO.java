package com.yourcodelab.dao;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yourcodelab.model.Cliente;

/**
 * Classe: ClienteDAO
 * Descrição: realiza a persistência da entidade Cliente
 *
 */
public class ClienteDAO extends GenericDAO{
	private PreparedStatement ps;
	private String SQL_INSERT = "INSERT INTO TBCLIENTE(nomeCompleto, cpf, email, limiteCredito) VALUES (?, ?, ?, ?);";
	private String SQL_SELECT = "SELECT id, nomeCompleto, cpf, email, limiteCredito FROM TBCLIENTE;";
	
	public void inserir(Cliente c){
		try {
			// Abrir conexão
			openConnection();
			
			// Preparar o comando SQL a ser enviado ao BD
			ps = connect.prepareStatement(SQL_INSERT);
			ps.setString(1, c.getNomeCompleto());
			ps.setString(2, c.getEmail());
			ps.setString(3, c.getCpf());
			ps.setFloat(4, c.getLimiteCredito());
			
			// Executar o comando de INSERT, logo não se espera retorno
			ps.executeUpdate();
			
			// Fechar conexão
			closeConnection();
		} catch (ClassNotFoundException e) {
			System.out.println("Class not Found");
		} catch (IOException e) {
			System.out.println("File not Found");
		} catch (SQLException e) {
			System.out.println("Error on Connecting");
		}
	}
	
	public List<Cliente> listarTodos(){
		List<Cliente> lista = new ArrayList<Cliente>();
		
		try {
			// Abrir conexão
			openConnection();
			
			// Preparar comando de SELECT
			ps = connect.prepareStatement(SQL_SELECT);
			
			// Retorno da consulta com os dados no ResultSet
			ResultSet rs = ps.executeQuery();
			
			// Se houve retorno
			if(rs != null){
				while(rs.next()){
					// Para cada registro do ResultSet, instanciar um objeto Cliente
					Cliente c = new Cliente(rs.getInt("id"), rs.getString("nomeCompleto"), rs.getString("cpf"), rs.getString("email"), rs.getFloat("limiteCredito"));
					
					// Adicionar na lista de Clientes
					lista.add(c);
				}
			}
			
			// Fechar conexão
			closeConnection();
		} catch (ClassNotFoundException e) {
			System.out.println("Class not Found");
		} catch (IOException e) {
			System.out.println("File not Found");
		} catch (SQLException e) {
			System.out.println("Error on Connecting");
		}
		
		// Se por acado não houve retorno do banco de dados, retorna
		return lista;
	}
}
