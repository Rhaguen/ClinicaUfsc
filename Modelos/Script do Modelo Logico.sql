USE [Clinica]
GO
/****** Object:  Table [dbo].[Acao]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agenda]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agendamento]    Script Date: 10/10/2013 16:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agendamento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profissionalespecialidade_id] [int] NOT NULL,
	[pacienteplano_id] [int] NOT NULL,
	[formaPagamento] [smallint] NOT NULL,
	[dataHora] [timestamp] NOT NULL,
	[valorCobrado] [numeric](9, 2) NULL,
	[pago] [bit] NULL,
	[dataPagamento] [date] NULL,
	[cadastradoPor] [int] NOT NULL,
 CONSTRAINT [pk_Agendamento] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Axionimo]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bairro]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cidade]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Convenio]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Especialidade]    Script Date: 10/10/2013 16:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](120) NOT NULL,
 CONSTRAINT [PK__Especial__3213E83F145C0A3F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estado]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 10/10/2013 16:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK__EstadoCi__3213E83F1A14E395] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FichaClinica]    Script Date: 10/10/2013 16:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaClinica](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[avaliacao] [text] NULL,
	[agendamento_id] [int] NULL,
 CONSTRAINT [PK__FichaCli__3213E83F1DE57479] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GrupoAcao]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logradouro]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 10/10/2013 16:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pessoa_id] [int] NULL,
 CONSTRAINT [pk_Paciente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PacientePlano]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pessoa]    Script Date: 10/10/2013 16:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pessoa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](120) NOT NULL,
	[axionimo_id] [int] NOT NULL,
	[estadocivil_id] [int] NOT NULL,
	[rg] [nvarchar](10) NULL,
	[foto] [varbinary](max) NULL,
	[cpf] [nvarchar](14) NULL,
	[nacionalidade] [nvarchar](120) NULL,
	[nascimento] [date] NOT NULL,
	[sexo] [bit] NOT NULL,
	[usuario_id] [int] NOT NULL,
 CONSTRAINT [pk_Pessoa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PessoaEndereco]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PessoaTelefone]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Plano]    Script Date: 10/10/2013 16:32:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plano](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [nvarchar](20) NULL,
	[nome] [nvarchar](120) NOT NULL,
	[diasParaFatura] [int] NOT NULL,
	[convenio_id] [int] NOT NULL,
	[valorConsulta] [numeric](9, 2) NOT NULL,
 CONSTRAINT [PK__Plano__40F9A20730F848ED] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profissional]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProfissionalEspecialidade]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Telefone]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoLogradouro]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoTelefone]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/10/2013 16:32:41 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [ix_Agendamento_DataHora]    Script Date: 10/10/2013 16:32:41 ******/
CREATE NONCLUSTERED INDEX [ix_Agendamento_DataHora] ON [dbo].[Agendamento]
(
	[dataHora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ix_Especialidade_Nome]    Script Date: 10/10/2013 16:32:41 ******/
CREATE NONCLUSTERED INDEX [ix_Especialidade_Nome] ON [dbo].[Especialidade]
(
	[nome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_Logradouro_cep]    Script Date: 10/10/2013 16:32:41 ******/
CREATE NONCLUSTERED INDEX [ix_Logradouro_cep] ON [dbo].[Logradouro]
(
	[cep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ix_Logradouro_Nome]    Script Date: 10/10/2013 16:32:41 ******/
CREATE NONCLUSTERED INDEX [ix_Logradouro_Nome] ON [dbo].[Logradouro]
(
	[nome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ix_nome_Pessoa]    Script Date: 10/10/2013 16:32:41 ******/
CREATE NONCLUSTERED INDEX [ix_nome_Pessoa] ON [dbo].[Pessoa]
(
	[nome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_Telefone]    Script Date: 10/10/2013 16:32:41 ******/
CREATE NONCLUSTERED INDEX [ix_Telefone] ON [dbo].[Telefone]
(
	[numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [fk_idPprofissional_Agenda_Profissional] FOREIGN KEY([profissional_id])
REFERENCES [dbo].[Profissional] ([id])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [fk_idPprofissional_Agenda_Profissional]
GO
ALTER TABLE [dbo].[Agendamento]  WITH CHECK ADD  CONSTRAINT [fk_idPacientePlano_Agendamento_PacientePlano] FOREIGN KEY([pacienteplano_id])
REFERENCES [dbo].[PacientePlano] ([id])
GO
ALTER TABLE [dbo].[Agendamento] CHECK CONSTRAINT [fk_idPacientePlano_Agendamento_PacientePlano]
GO
ALTER TABLE [dbo].[Agendamento]  WITH CHECK ADD  CONSTRAINT [fk_idProfissionalEspecialidade_Agendamento_ProfissionalEspecialidade] FOREIGN KEY([profissionalespecialidade_id])
REFERENCES [dbo].[ProfissionalEspecialidade] ([id])
GO
ALTER TABLE [dbo].[Agendamento] CHECK CONSTRAINT [fk_idProfissionalEspecialidade_Agendamento_ProfissionalEspecialidade]
GO
ALTER TABLE [dbo].[Agendamento]  WITH CHECK ADD  CONSTRAINT [fk_idUsuario_Agendamento_Usuario] FOREIGN KEY([cadastradoPor])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Agendamento] CHECK CONSTRAINT [fk_idUsuario_Agendamento_Usuario]
GO
ALTER TABLE [dbo].[Bairro]  WITH CHECK ADD  CONSTRAINT [fk_idCidade_Bairro_Cidade] FOREIGN KEY([cidade_id])
REFERENCES [dbo].[Cidade] ([id])
GO
ALTER TABLE [dbo].[Bairro] CHECK CONSTRAINT [fk_idCidade_Bairro_Cidade]
GO
ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD  CONSTRAINT [fk_idEstado_Cidade_Estado] FOREIGN KEY([estado_id])
REFERENCES [dbo].[Estado] ([id])
GO
ALTER TABLE [dbo].[Cidade] CHECK CONSTRAINT [fk_idEstado_Cidade_Estado]
GO
ALTER TABLE [dbo].[FichaClinica]  WITH CHECK ADD  CONSTRAINT [fk_idFichaClinica_Agendamento_FichaClinica] FOREIGN KEY([agendamento_id])
REFERENCES [dbo].[Agendamento] ([id])
GO
ALTER TABLE [dbo].[FichaClinica] CHECK CONSTRAINT [fk_idFichaClinica_Agendamento_FichaClinica]
GO
ALTER TABLE [dbo].[GrupoAcao]  WITH CHECK ADD  CONSTRAINT [fk_idAcao_GrupoAcao_Acao] FOREIGN KEY([acao_id])
REFERENCES [dbo].[Acao] ([id])
GO
ALTER TABLE [dbo].[GrupoAcao] CHECK CONSTRAINT [fk_idAcao_GrupoAcao_Acao]
GO
ALTER TABLE [dbo].[GrupoAcao]  WITH CHECK ADD  CONSTRAINT [fk_idGrupo_GrupoAcao_Grupo] FOREIGN KEY([grupo_id])
REFERENCES [dbo].[Grupo] ([id])
GO
ALTER TABLE [dbo].[GrupoAcao] CHECK CONSTRAINT [fk_idGrupo_GrupoAcao_Grupo]
GO
ALTER TABLE [dbo].[Logradouro]  WITH CHECK ADD  CONSTRAINT [fk_idBairro_Logradouro_Bairro] FOREIGN KEY([tipologradouro_id])
REFERENCES [dbo].[Bairro] ([id])
GO
ALTER TABLE [dbo].[Logradouro] CHECK CONSTRAINT [fk_idBairro_Logradouro_Bairro]
GO
ALTER TABLE [dbo].[Logradouro]  WITH CHECK ADD  CONSTRAINT [fk_idTipoLogradouro_Logradouro_Pessoa] FOREIGN KEY([tipologradouro_id])
REFERENCES [dbo].[TipoLogradouro] ([id])
GO
ALTER TABLE [dbo].[Logradouro] CHECK CONSTRAINT [fk_idTipoLogradouro_Logradouro_Pessoa]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [fk_idPessoa_Paciente_Pessoa] FOREIGN KEY([pessoa_id])
REFERENCES [dbo].[Pessoa] ([id])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [fk_idPessoa_Paciente_Pessoa]
GO
ALTER TABLE [dbo].[PacientePlano]  WITH CHECK ADD  CONSTRAINT [fk_idPaciente_PacientePlano_Paciente] FOREIGN KEY([paciente_id])
REFERENCES [dbo].[Paciente] ([id])
GO
ALTER TABLE [dbo].[PacientePlano] CHECK CONSTRAINT [fk_idPaciente_PacientePlano_Paciente]
GO
ALTER TABLE [dbo].[PacientePlano]  WITH CHECK ADD  CONSTRAINT [fk_idPlano_PacientePlano_Plano] FOREIGN KEY([plano_id])
REFERENCES [dbo].[Plano] ([id])
GO
ALTER TABLE [dbo].[PacientePlano] CHECK CONSTRAINT [fk_idPlano_PacientePlano_Plano]
GO
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [fk_idAxionimo_Pessoa_Axionimo] FOREIGN KEY([axionimo_id])
REFERENCES [dbo].[Axionimo] ([id])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [fk_idAxionimo_Pessoa_Axionimo]
GO
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [fk_idEstadoCivil_Pessoa_EstadoCivil] FOREIGN KEY([estadocivil_id])
REFERENCES [dbo].[EstadoCivil] ([id])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [fk_idEstadoCivil_Pessoa_EstadoCivil]
GO
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [fk_idUsuario_Pessoa_Usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [fk_idUsuario_Pessoa_Usuario]
GO
ALTER TABLE [dbo].[PessoaEndereco]  WITH CHECK ADD  CONSTRAINT [fk_idLogradouro_PessoaEndereco_Logradouro] FOREIGN KEY([idLogradouro])
REFERENCES [dbo].[Logradouro] ([id])
GO
ALTER TABLE [dbo].[PessoaEndereco] CHECK CONSTRAINT [fk_idLogradouro_PessoaEndereco_Logradouro]
GO
ALTER TABLE [dbo].[PessoaEndereco]  WITH CHECK ADD  CONSTRAINT [fk_idPessoa_PessoaEndereco_Pessoa] FOREIGN KEY([idPessoa])
REFERENCES [dbo].[Pessoa] ([id])
GO
ALTER TABLE [dbo].[PessoaEndereco] CHECK CONSTRAINT [fk_idPessoa_PessoaEndereco_Pessoa]
GO
ALTER TABLE [dbo].[PessoaTelefone]  WITH CHECK ADD  CONSTRAINT [fk_idPessoa_PessoaTelefone_Pessoa] FOREIGN KEY([idPessoa])
REFERENCES [dbo].[Pessoa] ([id])
GO
ALTER TABLE [dbo].[PessoaTelefone] CHECK CONSTRAINT [fk_idPessoa_PessoaTelefone_Pessoa]
GO
ALTER TABLE [dbo].[PessoaTelefone]  WITH CHECK ADD  CONSTRAINT [fk_idTelefone_PessoaTelefone_Telefone] FOREIGN KEY([idTelefone])
REFERENCES [dbo].[Telefone] ([id])
GO
ALTER TABLE [dbo].[PessoaTelefone] CHECK CONSTRAINT [fk_idTelefone_PessoaTelefone_Telefone]
GO
ALTER TABLE [dbo].[Plano]  WITH CHECK ADD  CONSTRAINT [fk_idConvenio_Plano_Convenio] FOREIGN KEY([convenio_id])
REFERENCES [dbo].[Convenio] ([id])
GO
ALTER TABLE [dbo].[Plano] CHECK CONSTRAINT [fk_idConvenio_Plano_Convenio]
GO
ALTER TABLE [dbo].[Profissional]  WITH CHECK ADD  CONSTRAINT [fk_idPessoa_Profissiona_Pessoa] FOREIGN KEY([pessoa_id])
REFERENCES [dbo].[Pessoa] ([id])
GO
ALTER TABLE [dbo].[Profissional] CHECK CONSTRAINT [fk_idPessoa_Profissiona_Pessoa]
GO
ALTER TABLE [dbo].[ProfissionalEspecialidade]  WITH CHECK ADD  CONSTRAINT [fk_idEspecialidade_ProfissionalEspecialidade_Especialidade] FOREIGN KEY([especialidade_id])
REFERENCES [dbo].[Especialidade] ([id])
GO
ALTER TABLE [dbo].[ProfissionalEspecialidade] CHECK CONSTRAINT [fk_idEspecialidade_ProfissionalEspecialidade_Especialidade]
GO
ALTER TABLE [dbo].[ProfissionalEspecialidade]  WITH CHECK ADD  CONSTRAINT [fk_idProfissional_ProfissionalEspecialidade_Profissional] FOREIGN KEY([profissional_id])
REFERENCES [dbo].[Profissional] ([id])
GO
ALTER TABLE [dbo].[ProfissionalEspecialidade] CHECK CONSTRAINT [fk_idProfissional_ProfissionalEspecialidade_Profissional]
GO
ALTER TABLE [dbo].[Telefone]  WITH CHECK ADD  CONSTRAINT [fk_idTipoTelefone_Telefone_TipoTelefonoe] FOREIGN KEY([tipotelefone_id])
REFERENCES [dbo].[TipoTelefone] ([id])
GO
ALTER TABLE [dbo].[Telefone] CHECK CONSTRAINT [fk_idTipoTelefone_Telefone_TipoTelefonoe]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [fk_idGrupo_Usuario_Grupo] FOREIGN KEY([grupo_id])
REFERENCES [dbo].[Grupo] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [fk_idGrupo_Usuario_Grupo]
GO