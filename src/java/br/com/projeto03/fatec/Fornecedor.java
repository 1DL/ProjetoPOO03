/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto03.fatec;

import java.util.ArrayList;

/**
 *
 * @author LuizV1
 */
public class Fornecedor {
    private String nome;
    private String razaoSocial;
    private String cnpj;
    private String email;
    private String telefone;
    private String endereco;

    public String getNome() {
        return nome;
    }
    
    public static ArrayList<Fornecedor> fornecedor;
    public static ArrayList<Fornecedor> getList()
    {
        if (fornecedor == null)
        {
            fornecedor = new ArrayList<>();
        }
        return fornecedor;
    }
    
    
    
    
    public String setNome(String nome) {
        if (nome.equals("")) {
            return "Nome do fornecedor em branco!";
        } else {
        this.nome = nome;
            return "";
        }
    }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razãoSocial) {
        this.razaoSocial = razãoSocial;
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

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereço) {
        this.endereco = endereço;
    }
}
