/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ufsc.trabalho.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ezequiel
 */
@Entity
@Table(name = "Agenda", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Agenda.findAll", query = "SELECT a FROM Agenda a"),
    @NamedQuery(name = "Agenda.findByDiaDaSemana", query = "SELECT a FROM Agenda a WHERE a.diaDaSemana = :diaDaSemana"),
    @NamedQuery(name = "Agenda.findByInicioExpediente", query = "SELECT a FROM Agenda a WHERE a.inicioExpediente = :inicioExpediente"),
    @NamedQuery(name = "Agenda.findByFimExpediente", query = "SELECT a FROM Agenda a WHERE a.fimExpediente = :fimExpediente"),
    @NamedQuery(name = "Agenda.findByInicioIntervalo", query = "SELECT a FROM Agenda a WHERE a.inicioIntervalo = :inicioIntervalo"),
    @NamedQuery(name = "Agenda.findByFimIntervalo", query = "SELECT a FROM Agenda a WHERE a.fimIntervalo = :fimIntervalo")})
public class Agenda implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "diaDaSemana")
    private Short diaDaSemana;
    @Basic(optional = false)
    @NotNull
   
    @Column(name = "inicioExpediente")
    @Temporal(javax.persistence.TemporalType.TIME)
    private Date inicioExpediente;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fimExpediente")
    @Temporal(javax.persistence.TemporalType.TIME)
    private Date fimExpediente;
    @Temporal(javax.persistence.TemporalType.TIME)
    @Column(name = "inicioIntervalo")
    private Date inicioIntervalo;
    @Temporal(javax.persistence.TemporalType.TIME)
    @Column(name = "fimIntervalo")
    private Date fimIntervalo;
    
    @JoinColumn(name = "profissional_id", referencedColumnName = "id")
    @ManyToOne
    private Profissional profissionalId;

    public Agenda() {
    }

    public Agenda(Short diaDaSemana) {
        this.diaDaSemana = diaDaSemana;
    }

    public Agenda(Short diaDaSemana, Date inicioExpediente, Date fimExpediente) {
        this.diaDaSemana = diaDaSemana;
        this.inicioExpediente = inicioExpediente;
        this.fimExpediente = fimExpediente;
    }

    public Short getDiaDaSemana() {
        return diaDaSemana;
    }

    public void setDiaDaSemana(Short diaDaSemana) {
        this.diaDaSemana = diaDaSemana;
    }

    public Date getInicioExpediente() {
        return inicioExpediente;
    }

    public void setInicioExpediente(Date inicioExpediente) {
        this.inicioExpediente = inicioExpediente;
    }

    public Date getFimExpediente() {
        return fimExpediente;
    }

    public void setFimExpediente(Date fimExpediente) {
        this.fimExpediente = fimExpediente;
    }

    public Date getInicioIntervalo() {
        return inicioIntervalo;
    }

    public void setInicioIntervalo(Date inicioIntervalo) {
        this.inicioIntervalo = inicioIntervalo;
    }

    public Date getFimIntervalo() {
        return fimIntervalo;
    }

    public void setFimIntervalo(Date fimIntervalo) {
        this.fimIntervalo = fimIntervalo;
    }

    public Profissional getProfissionalId() {
        return profissionalId;
    }

    public void setProfissionalId(Profissional profissionalId) {
        this.profissionalId = profissionalId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (diaDaSemana != null ? diaDaSemana.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Agenda)) {
            return false;
        }
        Agenda other = (Agenda) object;
        if ((this.diaDaSemana == null && other.diaDaSemana != null) || (this.diaDaSemana != null && !this.diaDaSemana.equals(other.diaDaSemana))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.Agenda[ diaDaSemana=" + diaDaSemana + " ]";
    }
    
}
