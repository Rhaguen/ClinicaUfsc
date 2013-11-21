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
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
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
@Table(name = "Pessoa", catalog = "trabalho", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pessoa.findAll", query = "SELECT p FROM Pessoa p"),
    @NamedQuery(name = "Pessoa.findById", query = "SELECT p FROM Pessoa p WHERE p.id = :id"),
    @NamedQuery(name = "Pessoa.findByNome", query = "SELECT p FROM Pessoa p WHERE p.nome = :nome"),
    @NamedQuery(name = "Pessoa.findByRg", query = "SELECT p FROM Pessoa p WHERE p.rg = :rg"),
    @NamedQuery(name = "Pessoa.findByCpf", query = "SELECT p FROM Pessoa p WHERE p.cpf = :cpf"),
    @NamedQuery(name = "Pessoa.findByNacionalidade", query = "SELECT p FROM Pessoa p WHERE p.nacionalidade = :nacionalidade"),
    @NamedQuery(name = "Pessoa.findByNascimento", query = "SELECT p FROM Pessoa p WHERE p.nascimento = :nascimento"),
    @NamedQuery(name = "Pessoa.findBySexo", query = "SELECT p FROM Pessoa p WHERE p.sexo = :sexo")})
public class Pessoa implements Serializable {
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
    @Size(max = 10)
    @Column(name = "rg")
    private String rg;
    @Lob
    @Column(name = "foto")
    private Serializable foto;
    @Size(max = 14)
    @Column(name = "cpf")
    private String cpf;
    @Size(max = 120)
    @Column(name = "nacionalidade")
    private String nacionalidade;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "nascimento")
    private String nascimento;
    @Basic(optional = false)
    @NotNull
    @Column(name = "sexo")
    private boolean sexo;
    @ManyToMany(mappedBy = "pessoaList")
    private List<Logradouro> logradouroList;
    @JoinTable(name = "PessoaTelefone", joinColumns = {
        @JoinColumn(name = "idPessoa", referencedColumnName = "id")}, inverseJoinColumns = {
        @JoinColumn(name = "idTelefone", referencedColumnName = "id")})
    @ManyToMany
    private List<Telefone> telefoneList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pessoaId")
    private List<Profissional> profissionalList;
    @JoinColumn(name = "usuario_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Usuario usuarioId;
    @JoinColumn(name = "estadocivil_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private EstadoCivil estadocivilId;
    @JoinColumn(name = "axionimo_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Axionimo axionimoId;
    @OneToMany(mappedBy = "pessoaId")
    private List<Paciente> pacienteList;

    public Pessoa() {
    }

    public Pessoa(Integer id) {
        this.id = id;
    }

    public Pessoa(Integer id, String nome, String nascimento, boolean sexo) {
        this.id = id;
        this.nome = nome;
        this.nascimento = nascimento;
        this.sexo = sexo;
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

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public Serializable getFoto() {
        return foto;
    }

    public void setFoto(Serializable foto) {
        this.foto = foto;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNacionalidade() {
        return nacionalidade;
    }

    public void setNacionalidade(String nacionalidade) {
        this.nacionalidade = nacionalidade;
    }

    public String getNascimento() {
        return nascimento;
    }

    public void setNascimento(String nascimento) {
        this.nascimento = nascimento;
    }

    public boolean getSexo() {
        return sexo;
    }

    public void setSexo(boolean sexo) {
        this.sexo = sexo;
    }

    @XmlTransient
    public List<Logradouro> getLogradouroList() {
        return logradouroList;
    }

    public void setLogradouroList(List<Logradouro> logradouroList) {
        this.logradouroList = logradouroList;
    }

    @XmlTransient
    public List<Telefone> getTelefoneList() {
        return telefoneList;
    }

    public void setTelefoneList(List<Telefone> telefoneList) {
        this.telefoneList = telefoneList;
    }

    @XmlTransient
    public List<Profissional> getProfissionalList() {
        return profissionalList;
    }

    public void setProfissionalList(List<Profissional> profissionalList) {
        this.profissionalList = profissionalList;
    }

    public Usuario getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(Usuario usuarioId) {
        this.usuarioId = usuarioId;
    }

    public EstadoCivil getEstadocivilId() {
        return estadocivilId;
    }

    public void setEstadocivilId(EstadoCivil estadocivilId) {
        this.estadocivilId = estadocivilId;
    }

    public Axionimo getAxionimoId() {
        return axionimoId;
    }

    public void setAxionimoId(Axionimo axionimoId) {
        this.axionimoId = axionimoId;
    }

    @XmlTransient
    public List<Paciente> getPacienteList() {
        return pacienteList;
    }

    public void setPacienteList(List<Paciente> pacienteList) {
        this.pacienteList = pacienteList;
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
        if (!(object instanceof Pessoa)) {
            return false;
        }
        Pessoa other = (Pessoa) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ufsc.trabalho.model.Pessoa[ id=" + id + " ]";
    }
    
}
