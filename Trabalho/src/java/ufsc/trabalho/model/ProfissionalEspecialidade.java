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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ezequiel
 */
@Entity
@Table(name = "ProfissionalEspecialidade", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ProfissionalEspecialidade.findAll", query = "SELECT p FROM ProfissionalEspecialidade p"),
    @NamedQuery(name = "ProfissionalEspecialidade.findById", query = "SELECT p FROM ProfissionalEspecialidade p WHERE p.id = :id")})
public class ProfissionalEspecialidade implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    @Column(name = "id")
    private Integer id;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "profissionalespecialidadeId")
    private List<Agendamento> agendamentoList;
    @JoinColumn(name = "profissional_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Profissional profissionalId;
    @JoinColumn(name = "especialidade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Especialidade especialidadeId;

    public ProfissionalEspecialidade() {
    }

    public ProfissionalEspecialidade(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @XmlTransient
    public List<Agendamento> getAgendamentoList() {
        return agendamentoList;
    }

    public void setAgendamentoList(List<Agendamento> agendamentoList) {
        this.agendamentoList = agendamentoList;
    }

    public Profissional getProfissionalId() {
        return profissionalId;
    }

    public void setProfissionalId(Profissional profissionalId) {
        this.profissionalId = profissionalId;
    }

    public Especialidade getEspecialidadeId() {
        return especialidadeId;
    }

    public void setEspecialidadeId(Especialidade especialidadeId) {
        this.especialidadeId = especialidadeId;
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
        if (!(object instanceof ProfissionalEspecialidade)) {
            return false;
        }
        ProfissionalEspecialidade other = (ProfissionalEspecialidade) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.ProfissionalEspecialidade[ id=" + id + " ]";
    }
    
}
