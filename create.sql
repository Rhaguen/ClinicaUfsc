USE [trabalho]
GO
/****** Object:  Table [dbo].[TipoTelefone]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTelefone](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [nvarchar](40) NOT NULL,
	[observacao] [nvarchar](120) NULL,
 CONSTRAINT [PK__TipoTele__3213E83F403A8C7D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoLogradouro]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoLogradouro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK__TipoLogr__3213E83F3C69FB99] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uf] [char](2) NOT NULL,
	[nome] [nvarchar](120) NOT NULL,
 CONSTRAINT [pk_Estado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](60) NOT NULL,
 CONSTRAINT [pk_Grupo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Axionimo]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Axionimo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[abreviacao] [nvarchar](10) NOT NULL,
	[pronome] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK__Axionimo__3213E83F08EA5793] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Acao]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](120) NULL,
	[acao] [nvarchar](120) NULL,
 CONSTRAINT [PK__Acao__3213E83F7F60ED59] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Convenio]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Convenio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](120) NOT NULL,
 CONSTRAINT [PK__Convenio__3213E83F108B795B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cidade]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cidade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](120) NOT NULL,
	[estado_id] [int] NOT NULL,
 CONSTRAINT [pk_Cidade] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefone]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefone](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigoArea] [int] NOT NULL,
	[numero] [int] NOT NULL,
	[tipotelefone_id] [int] NULL,
	[pessoa_id] [int] NOT NULL,
 CONSTRAINT [pk_Telefone] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoAcao]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoAcao](
	[grupo_id] [int] NOT NULL,
	[acao_id] [int] NOT NULL,
 CONSTRAINT [pk_GrupoAcao] PRIMARY KEY CLUSTERED 
(
	[grupo_id] ASC,
	[acao_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](40) NOT NULL,
	[senha] [nvarchar](120) NOT NULL,
	[grupo_id] [int] NOT NULL,
 CONSTRAINT [PK__Usuario__3213E83F440B1D61] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bairro]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bairro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cidade_id] [int] NOT NULL,
	[nome] [nvarchar](120) NOT NULL,
 CONSTRAINT [pk_Bairro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[dados_planos]    Script Date: 11/21/2013 08:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  VIEW [dbo].[dados_planos] AS  
  select con.id convenio_id, con.nome as convenio ,pla.id plano_id,  pla.nome plano , pla.diasParaFatura , pla.valorConsulta from convenio con inner join  plano pla on (pla.convenio_id = con.id)
GO
/****** Object:  View [dbo].[dados_pessoa]    Script Date: 11/21/2013 08:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dados_pessoa] AS
select pes.id, pes.nome, pes.rg , pes.cpf, pes.nacionalidade ,pes.nascimento , CASE WHEN pes.sexo = 'true' THEN 'Feminino' ELSE 'Masculino' END sexo 
, abreviacao , ecv.descricao  from pessoa pes 
  left join axionimo axi ON (axi.id = pes.axionimo_id)
  left join estadocivil ecv ON (ecv.id = pes.estadocivil_id)
GO
/****** Object:  Table [dbo].[Logradouro]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logradouro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cep] [int] NOT NULL,
	[nome] [nvarchar](120) NOT NULL,
	[bairro_id] [nchar](10) NULL,
	[tipologradouro_id] [int] NOT NULL,
 CONSTRAINT [pk_Loagradouro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PessoaTelefone]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PessoaTelefone](
	[idPessoa] [int] NOT NULL,
	[idTelefone] [int] NOT NULL,
 CONSTRAINT [pk_PessoaTelefone] PRIMARY KEY CLUSTERED 
(
	[idPessoa] ASC,
	[idTelefone] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profissional]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profissional](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[crm] [nvarchar](10) NOT NULL,
	[tipo] [smallint] NOT NULL,
	[pessoa_id] [int] NOT NULL,
 CONSTRAINT [pk_Profissional] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfissionalEspecialidade]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfissionalEspecialidade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profissional_id] [int] NOT NULL,
	[especialidade_id] [int] NOT NULL,
 CONSTRAINT [PK__Profissi__3213E83F36B12243] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PessoaEndereco]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PessoaEndereco](
	[idPessoa] [int] NOT NULL,
	[idLogradouro] [int] NOT NULL,
 CONSTRAINT [PK_PessoaEndereco] PRIMARY KEY CLUSTERED 
(
	[idPessoa] ASC,
	[idLogradouro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientePlano]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientePlano](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vencimento] [date] NULL,
	[matricula] [nvarchar](30) NULL,
	[paciente_id] [int] NOT NULL,
	[plano_id] [int] NOT NULL,
 CONSTRAINT [pk_PacientePlano] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[dados_paciente]    Script Date: 11/21/2013 08:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dados_paciente] AS  
  select pac.id paciente_id,pes.* from paciente pac inner join dados_pessoa pes on (pes.id = pac.pessoa_id)
GO
/****** Object:  Table [dbo].[Agenda]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agenda](
	[diaDaSemana] [tinyint] NOT NULL,
	[profissional_id] [int] NULL,
	[inicioExpediente] [time](7) NOT NULL,
	[fimExpediente] [time](7) NOT NULL,
	[inicioIntervalo] [time](7) NULL,
	[fimIntervalo] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[diaDaSemana] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[dados_profissional]    Script Date: 11/21/2013 08:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[dados_profissional] AS
select esp.id especialidade_id , esp.nome especialidade,pro.id profissional_id , dp.*  , pre.id AS profissionalespecialdade_id from 
  especialidade esp inner join profissionalespecialidade pre ON (esp.id = pre.especialidade_id)
  inner join profissional pro ON (pro.id = pre.profissional_id)
  inner join dados_pessoa dp on (dp.id = pro.pessoa_id)
GO
/****** Object:  View [dbo].[dados_paciente_planos]    Script Date: 11/21/2013 08:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[dados_paciente_planos] as
select pac.*, dp.* from dados_paciente pac inner join pacienteplano pp on (pp.paciente_id = pac.paciente_id)
left join dados_planos dp on (dp.plano_id = pp.plano_id)
GO
/****** Object:  Table [dbo].[Agendamento]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agendamento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataHora] [datetime2](7) NULL,
	[dataPagamento] [date] NULL,
	[formaPagamento] [smallint] NOT NULL,
	[pago] [bit] NULL,
	[valorCobrado] [numeric](19, 2) NULL,
	[cadastradoPor] [int] NOT NULL,
	[pacienteplano_id] [int] NOT NULL,
	[profissionalespecialidade_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[dados_agendamento]    Script Date: 11/21/2013 08:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[dados_agendamento] as
select  a.id as agendamento_id , a.datapagamento , a.formapagamento , a.pago , a.valorcobrado , dpp.* ,

dpro.nome medico, dpro.especialidade

from agendamento a inner join pacienteplano pp on (pp.id = a.pacienteplano_id)  

inner join dados_paciente_planos  dpp on (dpp.paciente_id = pp.paciente_id and dpp.plano_id = pp.plano_id)

inner join dados_profissional dpro ON (dpro.profissionalespecialdade_id = a.profissionalespecialidade_id)
GO
/****** Object:  View [dbo].[dados_agenda_profissional]    Script Date: 11/21/2013 08:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[dados_agenda_profissional] AS
select dp.*,a.diaDaSemana, a.inicioExpediente, a.fimExpediente , a.inicioIntervalo , a.fimIntervalo from agenda a inner join dados_profissional dp on (a.profissional_id = dp.profissional_id)
GO
/****** Object:  Table [dbo].[FichaClinica]    Script Date: 11/21/2013 08:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FichaClinica](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[avaliacao] [varchar](max) NULL,
	[agendamento_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[dados_producao]    Script Date: 11/21/2013 08:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[dados_producao] as 
select sum(valorCobrado) valorTotal ,count(*) total, avg(valorCobrado) media ,medico  from dados_agendamento group by medico
GO
/****** Object:  ForeignKey [fk_idPprofissional_Agenda_Profissional]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [fk_idPprofissional_Agenda_Profissional] FOREIGN KEY([profissional_id])
REFERENCES [dbo].[Profissional] ([id])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [fk_idPprofissional_Agenda_Profissional]
GO
/****** Object:  ForeignKey [FK8F03CA251573BFC5]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Agendamento]  WITH CHECK ADD  CONSTRAINT [FK8F03CA251573BFC5] FOREIGN KEY([profissionalespecialidade_id])
REFERENCES [dbo].[ProfissionalEspecialidade] ([id])
GO
ALTER TABLE [dbo].[Agendamento] CHECK CONSTRAINT [FK8F03CA251573BFC5]
GO
/****** Object:  ForeignKey [FK8F03CA25A3BAB0B6]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Agendamento]  WITH CHECK ADD  CONSTRAINT [FK8F03CA25A3BAB0B6] FOREIGN KEY([cadastradoPor])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Agendamento] CHECK CONSTRAINT [FK8F03CA25A3BAB0B6]
GO
/****** Object:  ForeignKey [FK8F03CA25AEE96225]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Agendamento]  WITH CHECK ADD  CONSTRAINT [FK8F03CA25AEE96225] FOREIGN KEY([pacienteplano_id])
REFERENCES [dbo].[PacientePlano] ([id])
GO
ALTER TABLE [dbo].[Agendamento] CHECK CONSTRAINT [FK8F03CA25AEE96225]
GO
/****** Object:  ForeignKey [fk_idCidade_Bairro_Cidade]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Bairro]  WITH CHECK ADD  CONSTRAINT [fk_idCidade_Bairro_Cidade] FOREIGN KEY([cidade_id])
REFERENCES [dbo].[Cidade] ([id])
GO
ALTER TABLE [dbo].[Bairro] CHECK CONSTRAINT [fk_idCidade_Bairro_Cidade]
GO
/****** Object:  ForeignKey [fk_idEstado_Cidade_Estado]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD  CONSTRAINT [fk_idEstado_Cidade_Estado] FOREIGN KEY([estado_id])
REFERENCES [dbo].[Estado] ([id])
GO
ALTER TABLE [dbo].[Cidade] CHECK CONSTRAINT [fk_idEstado_Cidade_Estado]
GO
/****** Object:  ForeignKey [FKD36E81603BCE0305]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[FichaClinica]  WITH CHECK ADD  CONSTRAINT [FKD36E81603BCE0305] FOREIGN KEY([agendamento_id])
REFERENCES [dbo].[Agendamento] ([id])
GO
ALTER TABLE [dbo].[FichaClinica] CHECK CONSTRAINT [FKD36E81603BCE0305]
GO
/****** Object:  ForeignKey [fk_idAcao_GrupoAcao_Acao]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[GrupoAcao]  WITH CHECK ADD  CONSTRAINT [fk_idAcao_GrupoAcao_Acao] FOREIGN KEY([acao_id])
REFERENCES [dbo].[Acao] ([id])
GO
ALTER TABLE [dbo].[GrupoAcao] CHECK CONSTRAINT [fk_idAcao_GrupoAcao_Acao]
GO
/****** Object:  ForeignKey [fk_idGrupo_GrupoAcao_Grupo]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[GrupoAcao]  WITH CHECK ADD  CONSTRAINT [fk_idGrupo_GrupoAcao_Grupo] FOREIGN KEY([grupo_id])
REFERENCES [dbo].[Grupo] ([id])
GO
ALTER TABLE [dbo].[GrupoAcao] CHECK CONSTRAINT [fk_idGrupo_GrupoAcao_Grupo]
GO
/****** Object:  ForeignKey [fk_idBairro_Logradouro_Bairro]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Logradouro]  WITH CHECK ADD  CONSTRAINT [fk_idBairro_Logradouro_Bairro] FOREIGN KEY([tipologradouro_id])
REFERENCES [dbo].[Bairro] ([id])
GO
ALTER TABLE [dbo].[Logradouro] CHECK CONSTRAINT [fk_idBairro_Logradouro_Bairro]
GO
/****** Object:  ForeignKey [fk_idTipoLogradouro_Logradouro_Pessoa]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Logradouro]  WITH CHECK ADD  CONSTRAINT [fk_idTipoLogradouro_Logradouro_Pessoa] FOREIGN KEY([tipologradouro_id])
REFERENCES [dbo].[TipoLogradouro] ([id])
GO
ALTER TABLE [dbo].[Logradouro] CHECK CONSTRAINT [fk_idTipoLogradouro_Logradouro_Pessoa]
GO
/****** Object:  ForeignKey [fk_idPessoa_Paciente_Pessoa]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [fk_idPessoa_Paciente_Pessoa] FOREIGN KEY([pessoa_id])
REFERENCES [dbo].[Pessoa] ([id])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [fk_idPessoa_Paciente_Pessoa]
GO
/****** Object:  ForeignKey [fk_idPaciente_PacientePlano_Paciente]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[PacientePlano]  WITH CHECK ADD  CONSTRAINT [fk_idPaciente_PacientePlano_Paciente] FOREIGN KEY([paciente_id])
REFERENCES [dbo].[Paciente] ([id])
GO
ALTER TABLE [dbo].[PacientePlano] CHECK CONSTRAINT [fk_idPaciente_PacientePlano_Paciente]
GO
/****** Object:  ForeignKey [fk_idPlano_PacientePlano_Plano]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[PacientePlano]  WITH CHECK ADD  CONSTRAINT [fk_idPlano_PacientePlano_Plano] FOREIGN KEY([plano_id])
REFERENCES [dbo].[Plano] ([id])
GO
ALTER TABLE [dbo].[PacientePlano] CHECK CONSTRAINT [fk_idPlano_PacientePlano_Plano]
GO
/****** Object:  ForeignKey [fk_idAxionimo_Pessoa_Axionimo]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [fk_idAxionimo_Pessoa_Axionimo] FOREIGN KEY([axionimo_id])
REFERENCES [dbo].[Axionimo] ([id])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [fk_idAxionimo_Pessoa_Axionimo]
GO
/****** Object:  ForeignKey [fk_idEstadoCivil_Pessoa_EstadoCivil]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [fk_idEstadoCivil_Pessoa_EstadoCivil] FOREIGN KEY([estadocivil_id])
REFERENCES [dbo].[EstadoCivil] ([id])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [fk_idEstadoCivil_Pessoa_EstadoCivil]
GO
/****** Object:  ForeignKey [fk_idUsuario_Pessoa_Usuario]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [fk_idUsuario_Pessoa_Usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [fk_idUsuario_Pessoa_Usuario]
GO
/****** Object:  ForeignKey [fk_idLogradouro_PessoaEndereco_Logradouro]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[PessoaEndereco]  WITH CHECK ADD  CONSTRAINT [fk_idLogradouro_PessoaEndereco_Logradouro] FOREIGN KEY([idLogradouro])
REFERENCES [dbo].[Logradouro] ([id])
GO
ALTER TABLE [dbo].[PessoaEndereco] CHECK CONSTRAINT [fk_idLogradouro_PessoaEndereco_Logradouro]
GO
/****** Object:  ForeignKey [fk_idPessoa_PessoaEndereco_Pessoa]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[PessoaEndereco]  WITH CHECK ADD  CONSTRAINT [fk_idPessoa_PessoaEndereco_Pessoa] FOREIGN KEY([idPessoa])
REFERENCES [dbo].[Pessoa] ([id])
GO
ALTER TABLE [dbo].[PessoaEndereco] CHECK CONSTRAINT [fk_idPessoa_PessoaEndereco_Pessoa]
GO
/****** Object:  ForeignKey [fk_idPessoa_PessoaTelefone_Pessoa]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[PessoaTelefone]  WITH CHECK ADD  CONSTRAINT [fk_idPessoa_PessoaTelefone_Pessoa] FOREIGN KEY([idPessoa])
REFERENCES [dbo].[Pessoa] ([id])
GO
ALTER TABLE [dbo].[PessoaTelefone] CHECK CONSTRAINT [fk_idPessoa_PessoaTelefone_Pessoa]
GO
/****** Object:  ForeignKey [fk_idTelefone_PessoaTelefone_Telefone]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[PessoaTelefone]  WITH CHECK ADD  CONSTRAINT [fk_idTelefone_PessoaTelefone_Telefone] FOREIGN KEY([idTelefone])
REFERENCES [dbo].[Telefone] ([id])
GO
ALTER TABLE [dbo].[PessoaTelefone] CHECK CONSTRAINT [fk_idTelefone_PessoaTelefone_Telefone]
GO
/****** Object:  ForeignKey [fk_idConvenio_Plano_Convenio]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Plano]  WITH CHECK ADD  CONSTRAINT [fk_idConvenio_Plano_Convenio] FOREIGN KEY([convenio_id])
REFERENCES [dbo].[Convenio] ([id])
GO
ALTER TABLE [dbo].[Plano] CHECK CONSTRAINT [fk_idConvenio_Plano_Convenio]
GO
/****** Object:  ForeignKey [fk_idPessoa_Profissiona_Pessoa]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Profissional]  WITH CHECK ADD  CONSTRAINT [fk_idPessoa_Profissiona_Pessoa] FOREIGN KEY([pessoa_id])
REFERENCES [dbo].[Pessoa] ([id])
GO
ALTER TABLE [dbo].[Profissional] CHECK CONSTRAINT [fk_idPessoa_Profissiona_Pessoa]
GO
/****** Object:  ForeignKey [fk_idEspecialidade_ProfissionalEspecialidade_Especialidade]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[ProfissionalEspecialidade]  WITH CHECK ADD  CONSTRAINT [fk_idEspecialidade_ProfissionalEspecialidade_Especialidade] FOREIGN KEY([especialidade_id])
REFERENCES [dbo].[Especialidade] ([id])
GO
ALTER TABLE [dbo].[ProfissionalEspecialidade] CHECK CONSTRAINT [fk_idEspecialidade_ProfissionalEspecialidade_Especialidade]
GO
/****** Object:  ForeignKey [fk_idProfissional_ProfissionalEspecialidade_Profissional]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[ProfissionalEspecialidade]  WITH CHECK ADD  CONSTRAINT [fk_idProfissional_ProfissionalEspecialidade_Profissional] FOREIGN KEY([profissional_id])
REFERENCES [dbo].[Profissional] ([id])
GO
ALTER TABLE [dbo].[ProfissionalEspecialidade] CHECK CONSTRAINT [fk_idProfissional_ProfissionalEspecialidade_Profissional]
GO
/****** Object:  ForeignKey [fk_idTipoTelefone_Telefone_TipoTelefonoe]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Telefone]  WITH CHECK ADD  CONSTRAINT [fk_idTipoTelefone_Telefone_TipoTelefonoe] FOREIGN KEY([tipotelefone_id])
REFERENCES [dbo].[TipoTelefone] ([id])
GO
ALTER TABLE [dbo].[Telefone] CHECK CONSTRAINT [fk_idTipoTelefone_Telefone_TipoTelefonoe]
GO
/****** Object:  ForeignKey [fk_idGrupo_Usuario_Grupo]    Script Date: 11/21/2013 08:05:58 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [fk_idGrupo_Usuario_Grupo] FOREIGN KEY([grupo_id])
REFERENCES [dbo].[Grupo] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [fk_idGrupo_Usuario_Grupo]
GO
