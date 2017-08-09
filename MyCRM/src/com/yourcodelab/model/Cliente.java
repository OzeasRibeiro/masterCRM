package com.yourcodelab.model;

/**
 * Classe: Cliente
 * Descrição: Entidade de cliente pessoa física 
 *
 */
public class Cliente{
	private Integer id;
	private String nomeCompleto;
	private String cpf;
	private String email;
	private Float limiteCredito;
	
	/**
	 * Construtor especializado, podem ser atribuídos valores de todos ou alguns atributos
	 */
	public Cliente(Integer id, String nomeCompleto, String cpf, String email, Float limiteCredito){
		this.id = id;
		this.nomeCompleto = nomeCompleto;
		this.cpf = cpf;
		this.email = email;
		this.limiteCredito = limiteCredito;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNomeCompleto() {
		return nomeCompleto;
	}
	public void setNomeCompleto(String nomeCompleto) {
		this.nomeCompleto = nomeCompleto;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Float getLimiteCredito() {
		return limiteCredito;
	}
	public void setLimiteCredito(Float limiteCredito) {
		this.limiteCredito = limiteCredito;
	}
}
