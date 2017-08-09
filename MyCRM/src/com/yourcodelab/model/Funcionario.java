package com.yourcodelab.model;

/**
 * Classe: Funcionario
 * Descrição: Entidade que representa um funcionário 
 *
 */
public class Funcionario extends Pessoa{
	private String matricula;
	private String cargo;
	
	public String getMatricula() {
		return matricula;
	}
	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}
	public String getCargo() {
		return cargo;
	}
	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
}
