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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "Profissional", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Profissional.findAll", query = "SELECT p FROM Profissional p"),
    @NamedQuery(name = "Profissional.findById", query = "SELECT p FROM Profissional p WHERE p.id = :id"),
    @NamedQuery(name = "Profissional.findByCrm", query = "SELECT p FROM Profissional p WHERE p.crm = :crm"),
    @NamedQuery(name = "Profissional.findByTipo", query = "SELECT p FROM Profissional p WHERE p.tipo = :tipo")})
public class Profissional implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "crm")
    private String crm;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tipo")
    private short tipo;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "profissionalId")
    private List<ProfissionalEspecialidade> profissionalEspecialidadeList;
    @OneToMany(mappedBy = "profissionalId")
    private List<Agenda> agendaList;
    @JoinColumn(name = "pessoa_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Pessoa pessoaId;

    public Profissional() {
    }

    public Profissional(Integer id) {
        this.id = id;
    }

    public Profissional(Integer id, String crm, short tipo) {
        this.id = id;
        this.crm = crm;
        this.tipo = tipo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCrm() {
        return crm;
    }

    public void setCrm(String crm) {
        this.crm = crm;
    }

    public short getTipo() {
        return tipo;
    }

    public void setTipo(short tipo) {
        this.tipo = tipo;
    }

    @XmlTransient
    public List<ProfissionalEspecialidade> getProfissionalEspecialidadeList() {
        return profissionalEspecialidadeList;
    }

    public void setProfissionalEspecialidadeList(List<ProfissionalEspecialidade> profissionalEspecialidadeList) {
        this.profissionalEspecialidadeList = profissionalEspecialidadeList;
    }

    @XmlTransient
    public List<Agenda> getAgendaList() {
        return agendaList;
    }

    public void setAgendaList(List<Agenda> agendaList) {
        this.agendaList = agendaList;
    }

    public Pessoa getPessoaId() {
        return pessoaId;
    }

    public void setPessoaId(Pessoa pessoaId) {
        this.pessoaId = pessoaId;
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
        if (!(object instanceof Profissional)) {
            return false;
        }
        Profissional other = (Profissional) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.Profissional[ id=" + id + " ]";
    }
    
}
