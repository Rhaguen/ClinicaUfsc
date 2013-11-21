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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ezequiel
 */
@Entity
@Table(name = "PacientePlano", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PacientePlano.findAll", query = "SELECT p FROM PacientePlano p"),
    @NamedQuery(name = "PacientePlano.findById", query = "SELECT p FROM PacientePlano p WHERE p.id = :id"),
    @NamedQuery(name = "PacientePlano.findByVencimento", query = "SELECT p FROM PacientePlano p WHERE p.vencimento = :vencimento"),
    @NamedQuery(name = "PacientePlano.findByMatricula", query = "SELECT p FROM PacientePlano p WHERE p.matricula = :matricula")})
public class PacientePlano implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    @Column(name = "id")
    private Integer id;
    @Size(max = 10)
    @Column(name = "vencimento")
    private String vencimento;
    @Size(max = 30)
    @Column(name = "matricula")
    private String matricula;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pacienteplanoId")
    private List<Agendamento> agendamentoList;
    @JoinColumn(name = "plano_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Plano planoId;
    @JoinColumn(name = "paciente_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Paciente pacienteId;

    public PacientePlano() {
    }

    public PacientePlano(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getVencimento() {
        return vencimento;
    }

    public void setVencimento(String vencimento) {
        this.vencimento = vencimento;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    @XmlTransient
    public List<Agendamento> getAgendamentoList() {
        return agendamentoList;
    }

    public void setAgendamentoList(List<Agendamento> agendamentoList) {
        this.agendamentoList = agendamentoList;
    }

    public Plano getPlanoId() {
        return planoId;
    }

    public void setPlanoId(Plano planoId) {
        this.planoId = planoId;
    }

    public Paciente getPacienteId() {
        return pacienteId;
    }

    public void setPacienteId(Paciente pacienteId) {
        this.pacienteId = pacienteId;
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
        if (!(object instanceof PacientePlano)) {
            return false;
        }
        PacientePlano other = (PacientePlano) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.PacientePlano[ id=" + id + " ]";
    }
    
}
