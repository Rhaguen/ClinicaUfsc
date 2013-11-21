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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ezequiel
 */
@Entity
@Table(name = "Telefone", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Telefone.findAll", query = "SELECT t FROM Telefone t"),
    @NamedQuery(name = "Telefone.findById", query = "SELECT t FROM Telefone t WHERE t.id = :id"),
    @NamedQuery(name = "Telefone.findByCodigoArea", query = "SELECT t FROM Telefone t WHERE t.codigoArea = :codigoArea"),
    @NamedQuery(name = "Telefone.findByNumero", query = "SELECT t FROM Telefone t WHERE t.numero = :numero"),
    @NamedQuery(name = "Telefone.findByPessoaId", query = "SELECT t FROM Telefone t WHERE t.pessoaId = :pessoaId")})
public class Telefone implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "codigoArea")
    private int codigoArea;
    @Basic(optional = false)
    @NotNull
    @Column(name = "numero")
    private int numero;
    @Basic(optional = false)
    @NotNull
    @Column(name = "pessoa_id")
    private int pessoaId;
    @ManyToMany(mappedBy = "telefoneList")
    private List<Pessoa> pessoaList;
    @JoinColumn(name = "tipotelefone_id", referencedColumnName = "id")
    @ManyToOne
    private TipoTelefone tipotelefoneId;

    public Telefone() {
    }

    public Telefone(Integer id) {
        this.id = id;
    }

    public Telefone(Integer id, int codigoArea, int numero, int pessoaId) {
        this.id = id;
        this.codigoArea = codigoArea;
        this.numero = numero;
        this.pessoaId = pessoaId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getCodigoArea() {
        return codigoArea;
    }

    public void setCodigoArea(int codigoArea) {
        this.codigoArea = codigoArea;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getPessoaId() {
        return pessoaId;
    }

    public void setPessoaId(int pessoaId) {
        this.pessoaId = pessoaId;
    }

    @XmlTransient
    public List<Pessoa> getPessoaList() {
        return pessoaList;
    }

    public void setPessoaList(List<Pessoa> pessoaList) {
        this.pessoaList = pessoaList;
    }

    public TipoTelefone getTipotelefoneId() {
        return tipotelefoneId;
    }

    public void setTipotelefoneId(TipoTelefone tipotelefoneId) {
        this.tipotelefoneId = tipotelefoneId;
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
        if (!(object instanceof Telefone)) {
            return false;
        }
        Telefone other = (Telefone) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.Telefone[ id=" + id + " ]";
    }
    
}
