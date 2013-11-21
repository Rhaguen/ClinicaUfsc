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
@Table(name = "Axionimo", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Axionimo.findAll", query = "SELECT a FROM Axionimo a"),
    @NamedQuery(name = "Axionimo.findById", query = "SELECT a FROM Axionimo a WHERE a.id = :id"),
    @NamedQuery(name = "Axionimo.findByAbreviacao", query = "SELECT a FROM Axionimo a WHERE a.abreviacao = :abreviacao"),
    @NamedQuery(name = "Axionimo.findByPronome", query = "SELECT a FROM Axionimo a WHERE a.pronome = :pronome")})
public class Axionimo implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "abreviacao")
    private String abreviacao;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 80)
    @Column(name = "pronome")
    private String pronome;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "axionimoId")
    private List<Pessoa> pessoaList;

    public Axionimo() {
    }

    public Axionimo(Integer id) {
        this.id = id;
    }

    public Axionimo(Integer id, String abreviacao, String pronome) {
        this.id = id;
        this.abreviacao = abreviacao;
        this.pronome = pronome;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAbreviacao() {
        return abreviacao;
    }

    public void setAbreviacao(String abreviacao) {
        this.abreviacao = abreviacao;
    }

    public String getPronome() {
        return pronome;
    }

    public void setPronome(String pronome) {
        this.pronome = pronome;
    }

    @XmlTransient
    public List<Pessoa> getPessoaList() {
        return pessoaList;
    }

    public void setPessoaList(List<Pessoa> pessoaList) {
        this.pessoaList = pessoaList;
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
        if (!(object instanceof Axionimo)) {
            return false;
        }
        Axionimo other = (Axionimo) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.Axionimo[ id=" + id + " ]";
    }
    
}
