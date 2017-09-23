/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto03.fatec;

/**
 *
 * @author LuizV1
 */
public class Fornecedor {
    private String nome;
    private String razãoSocial;
    private String cnpj;
    private String email;
    private String telefone;
    private String endereço;

    public String getNome() {
        return nome;
    }

    public String setNome(String nome) {
        if (nome.equals("")) {
            return "Nome do fornecedor em branco!";
        } else {
        this.nome = nome;
            return "";
        }
    }

    public String getRazãoSocial() {
        return razãoSocial;
    }

    public void setRazãoSocial(String razãoSocial) {
        this.razãoSocial = razãoSocial;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereço() {
        return endereço;
    }

    public void setEndereço(String endereço) {
        this.endereço = endereço;
    }
}
