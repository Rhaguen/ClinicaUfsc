/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ufsc.trabalho.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
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
import javax.persistence.Temporal;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ezequiel
 */
@Entity
@Table(name = "Agendamento", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Agendamento.findAll", query = "SELECT a FROM Agendamento a"),
    @NamedQuery(name = "Agendamento.findById", query = "SELECT a FROM Agendamento a WHERE a.id = :id"),
    @NamedQuery(name = "Agendamento.findByFormaPagamento", query = "SELECT a FROM Agendamento a WHERE a.formaPagamento = :formaPagamento"),
    @NamedQuery(name = "Agendamento.findByValorCobrado", query = "SELECT a FROM Agendamento a WHERE a.valorCobrado = :valorCobrado"),
    @NamedQuery(name = "Agendamento.findByPago", query = "SELECT a FROM Agendamento a WHERE a.pago = :pago"),
    @NamedQuery(name = "Agendamento.findByDataPagamento", query = "SELECT a FROM Agendamento a WHERE a.dataPagamento = :dataPagamento")})
public class Agendamento implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "formaPagamento")
    private short formaPagamento;
    
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date dataHora;
   
    @Column(name = "valorCobrado")
    private BigDecimal valorCobrado;
    @Column(name = "pago")
    private Boolean pago;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dataPagamento;
    @OneToMany(mappedBy = "agendamentoId")
    private List<FichaClinica> fichaClinicaList;
    @JoinColumn(name = "cadastradoPor", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Usuario cadastradoPor;
    @JoinColumn(name = "profissionalespecialidade_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private ProfissionalEspecialidade profissionalespecialidadeId;
    @JoinColumn(name = "pacienteplano_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private PacientePlano pacienteplanoId;

    public Agendamento() {
    }

    public Agendamento(Integer id) {
        this.id = id;
    }

    public Agendamento(Integer id, short formaPagamento, Date dataHora) {
        this.id = id;
        this.formaPagamento = formaPagamento;
        this.dataHora = dataHora;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public short getFormaPagamento() {
        return formaPagamento;
    }

    public void setFormaPagamento(short formaPagamento) {
        this.formaPagamento = formaPagamento;
    }

    public Date getDataHora() {
        return dataHora;
    }

    public void setDataHora(Date dataHora) {
        this.dataHora = dataHora;
    }

    public BigDecimal getValorCobrado() {
        return valorCobrado;
    }

    public void setValorCobrado(BigDecimal valorCobrado) {
        this.valorCobrado = valorCobrado;
    }

    public Boolean getPago() {
        return pago;
    }

    public void setPago(Boolean pago) {
        this.pago = pago;
    }

    public Date getDataPagamento() {
        return dataPagamento;
    }

    public void setDataPagamento(Date dataPagamento) {
        this.dataPagamento = dataPagamento;
    }

    @XmlTransient
    public List<FichaClinica> getFichaClinicaList() {
        return fichaClinicaList;
    }

    public void setFichaClinicaList(List<FichaClinica> fichaClinicaList) {
        this.fichaClinicaList = fichaClinicaList;
    }

    public Usuario getCadastradoPor() {
        return cadastradoPor;
    }

    public void setCadastradoPor(Usuario cadastradoPor) {
        this.cadastradoPor = cadastradoPor;
    }

    public ProfissionalEspecialidade getProfissionalespecialidadeId() {
        return profissionalespecialidadeId;
    }

    public void setProfissionalespecialidadeId(ProfissionalEspecialidade profissionalespecialidadeId) {
        this.profissionalespecialidadeId = profissionalespecialidadeId;
    }

    public PacientePlano getPacienteplanoId() {
        return pacienteplanoId;
    }

    public void setPacienteplanoId(PacientePlano pacienteplanoId) {
        this.pacienteplanoId = pacienteplanoId;
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
        if (!(object instanceof Agendamento)) {
            return false;
        }
        Agendamento other = (Agendamento) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.Agendamento[ id=" + id + " ]";
    }
    
}
