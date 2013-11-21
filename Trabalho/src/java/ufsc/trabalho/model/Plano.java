/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ufsc.trabalho.model;

import java.io.Serializable;
import java.math.BigDecimal;
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
@Table(name = "Plano", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Plano.findAll", query = "SELECT p FROM Plano p"),
    @NamedQuery(name = "Plano.findById", query = "SELECT p FROM Plano p WHERE p.id = :id"),
    @NamedQuery(name = "Plano.findByCodigo", query = "SELECT p FROM Plano p WHERE p.codigo = :codigo"),
    @NamedQuery(name = "Plano.findByNome", query = "SELECT p FROM Plano p WHERE p.nome = :nome"),
    @NamedQuery(name = "Plano.findByDiasParaFatura", query = "SELECT p FROM Plano p WHERE p.diasParaFatura = :diasParaFatura"),
    @NamedQuery(name = "Plano.findByValorConsulta", query = "SELECT p FROM Plano p WHERE p.valorConsulta = :valorConsulta")})
public class Plano implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    @Column(name = "id")
    private Integer id;
    @Size(max = 20)
    @Column(name = "codigo")
    private String codigo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 120)
    @Column(name = "nome")
    private String nome;
    @Basic(optional = false)
    @NotNull
    @Column(name = "diasParaFatura")
    private int diasParaFatura;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "valorConsulta")
    private BigDecimal valorConsulta;
    @JoinColumn(name = "convenio_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Convenio convenioId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "planoId")
    private List<PacientePlano> pacientePlanoList;

    public Plano() {
    }

    public Plano(Integer id) {
        this.id = id;
    }

    public Plano(Integer id, String nome, int diasParaFatura, BigDecimal valorConsulta) {
        this.id = id;
        this.nome = nome;
        this.diasParaFatura = diasParaFatura;
        this.valorConsulta = valorConsulta;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getDiasParaFatura() {
        return diasParaFatura;
    }

    public void setDiasParaFatura(int diasParaFatura) {
        this.diasParaFatura = diasParaFatura;
    }

    public BigDecimal getValorConsulta() {
        return valorConsulta;
    }

    public void setValorConsulta(BigDecimal valorConsulta) {
        this.valorConsulta = valorConsulta;
    }

    public Convenio getConvenioId() {
        return convenioId;
    }

    public void setConvenioId(Convenio convenioId) {
        this.convenioId = convenioId;
    }

    @XmlTransient
    public List<PacientePlano> getPacientePlanoList() {
        return pacientePlanoList;
    }

    public void setPacientePlanoList(List<PacientePlano> pacientePlanoList) {
        this.pacientePlanoList = pacientePlanoList;
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
        if (!(object instanceof Plano)) {
            return false;
        }
        Plano other = (Plano) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.Plano[ id=" + id + " ]";
    }
    
}
