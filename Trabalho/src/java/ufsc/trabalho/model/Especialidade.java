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
@Table(name = "Especialidade", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Especialidade.findAll", query = "SELECT e FROM Especialidade e"),
    @NamedQuery(name = "Especialidade.findById", query = "SELECT e FROM Especialidade e WHERE e.id = :id"),
    @NamedQuery(name = "Especialidade.findByNome", query = "SELECT e FROM Especialidade e WHERE e.nome = :nome")})
public class Especialidade implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 120)
    @Column(name = "nome")
    private String nome;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "especialidadeId")
    private List<ProfissionalEspecialidade> profissionalEspecialidadeList;

    public Especialidade() {
    }

    public Especialidade(Integer id) {
        this.id = id;
    }

    public Especialidade(Integer id, String nome) {
        this.id = id;
        this.nome = nome;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @XmlTransient
    public List<ProfissionalEspecialidade> getProfissionalEspecialidadeList() {
        return profissionalEspecialidadeList;
    }

    public void setProfissionalEspecialidadeList(List<ProfissionalEspecialidade> profissionalEspecialidadeList) {
        this.profissionalEspecialidadeList = profissionalEspecialidadeList;
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
        if (!(object instanceof Especialidade)) {
            return false;
        }
        Especialidade other = (Especialidade) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.Especialidade[ id=" + id + " ]";
    }
    
}
