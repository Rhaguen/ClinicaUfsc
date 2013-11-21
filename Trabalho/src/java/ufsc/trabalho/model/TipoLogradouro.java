/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ufsc.trabalho.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
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
@Table(name = "TipoLogradouro", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TipoLogradouro.findAll", query = "SELECT t FROM TipoLogradouro t"),
    @NamedQuery(name = "TipoLogradouro.findById", query = "SELECT t FROM TipoLogradouro t WHERE t.id = :id"),
    @NamedQuery(name = "TipoLogradouro.findByTipo", query = "SELECT t FROM TipoLogradouro t WHERE t.tipo = :tipo")})
public class TipoLogradouro implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "tipo")
    private String tipo;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tipologradouroId")
    private List<Logradouro> logradouroList;

    public TipoLogradouro() {
    }

    public TipoLogradouro(Integer id) {
        this.id = id;
    }

    public TipoLogradouro(Integer id, String tipo) {
        this.id = id;
        this.tipo = tipo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @XmlTransient
    public List<Logradouro> getLogradouroList() {
        return logradouroList;
    }

    public void setLogradouroList(List<Logradouro> logradouroList) {
        this.logradouroList = logradouroList;
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
        if (!(object instanceof TipoLogradouro)) {
            return false;
        }
        TipoLogradouro other = (TipoLogradouro) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.TipoLogradouro[ id=" + id + " ]";
    }
    
}
