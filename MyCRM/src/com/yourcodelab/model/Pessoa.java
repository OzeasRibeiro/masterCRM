package com.yourcodelab.model;

import java.sql.Date;
import java.util.List;

/**
 * Classe: Pessoa
 * Descrição: Generalização necessária para as classes Cliente e Funcionario
 */
public class Pessoa {
	private Integer id;
	private String nomeCompleto;
	private String cpf;
	private String email;
	private Date dataNascimento;
	private String foneCelular;
	private String foneResidencial;
	private String foneComercial;
	private boolean ativo;
	private List listaEnderecos;
	
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
	public Date getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	public String getFoneCelular() {
		return foneCelular;
	}
	public void setFoneCelular(String foneCelular) {
		this.foneCelular = foneCelular;
	}
	public String getFoneResidencial() {
		return foneResidencial;
	}
	public void setFoneResidencial(String foneResidencial) {
		this.foneResidencial = foneResidencial;
	}
	public String getFoneComercial() {
		return foneComercial;
	}
	public void setFoneComercial(String foneComercial) {
		this.foneComercial = foneComercial;
	}
	public boolean isAtivo() {
		return ativo;
	}
	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}
	public List getListaEnderecos() {
		return listaEnderecos;
	}
	public void setListaEnderecos(List listaEnderecos) {
		this.listaEnderecos = listaEnderecos;
	}
}
