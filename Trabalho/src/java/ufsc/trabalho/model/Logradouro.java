/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ufsc.trabalho.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ezequiel
 */
@Entity
@Table(name = "Logradouro", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Logradouro.findAll", query = "SELECT l FROM Logradouro l"),
    @NamedQuery(name = "Logradouro.findById", query = "SELECT l FROM Logradouro l WHERE l.id = :id"),
    @NamedQuery(name = "Logradouro.findByCep", query = "SELECT l FROM Logradouro l WHERE l.cep = :cep"),
    @NamedQuery(name = "Logradouro.findByNome", query = "SELECT l FROM Logradouro l WHERE l.nome = :nome"),
    @NamedQuery(name = "Logradouro.findByBairroId", query = "SELECT l FROM Logradouro l WHERE l.bairroId = :bairroId")})
public class Logradouro implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "cep")
    private int cep;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 120)
    @Column(name = "nome")
    private String nome;
    @Size(max = 10)
    @Column(name = "bairro_id")
    private String bairroId;
    @JoinTable(name = "PessoaEndereco", joinColumns = {
        @JoinColumn(name = "idLogradouro", referencedColumnName = "id")}, inverseJoinColumns = {
        @JoinColumn(name = "idPessoa", referencedColumnName = "id")})
    @ManyToMany
    private List<Pessoa> pessoaList;
    @JoinColumn(name = "tipologradouro_id", referencedColumnName = "id" ,insertable = false , updatable = false)
    @ManyToOne(optional = false )
    private TipoLogradouro tipologradouroId;
    @JoinColumn(name = "tipologradouro_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Bairro tipologradouroId1;

    public Logradouro() {
    }

    public Logradouro(Integer id) {
        this.id = id;
    }

    public Logradouro(Integer id, int cep, String nome) {
        this.id = id;
        this.cep = cep;
        this.nome = nome;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getCep() {
        return cep;
    }

    public void setCep(int cep) {
        this.cep = cep;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getBairroId() {
        return bairroId;
    }

    public void setBairroId(String bairroId) {
        this.bairroId = bairroId;
    }

    @XmlTransient
    public List<Pessoa> getPessoaList() {
        return pessoaList;
    }

    public void setPessoaList(List<Pessoa> pessoaList) {
        this.pessoaList = pessoaList;
    }

    public TipoLogradouro getTipologradouroId() {
        return tipologradouroId;
    }

    public void setTipologradouroId(TipoLogradouro tipologradouroId) {
        this.tipologradouroId = tipologradouroId;
    }

    public Bairro getTipologradouroId1() {
        return tipologradouroId1;
    }

    public void setTipologradouroId1(Bairro tipologradouroId1) {
        this.tipologradouroId1 = tipologradouroId1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Logradouro)) {
            return false;
        }
        Logradouro other = (Logradouro) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.Logradouro[ id=" + id + " ]";
    }
    
}
