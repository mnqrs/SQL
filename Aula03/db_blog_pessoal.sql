CREATE TABLE [tb_postagens] (
	id bigint NOT NULL,
	Titulo varchar(255) NOT NULL,
	Texto varchar(2000) NOT NULL,
	Foto/Vídeo varchar(2000) NOT NULL,
	Data date NOT NULL,
	TemaId bigint NOT NULL,
	UsuarioId bigint NOT NULL,
  CONSTRAINT [PK_TB_POSTAGENS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_temas] (
	id bigint NOT NULL,
	Tematica varchar(255) NOT NULL,
	Descricao varchar(255) NOT NULL,
  CONSTRAINT [PK_TB_TEMAS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_usuarios] (
	id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Usuario varchar(2000) NOT NULL,
	Senha varchar(255) NOT NULL,
	Foto varchar(2000) NOT NULL,
  CONSTRAINT [PK_TB_USUARIOS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [tb_postagens] WITH CHECK ADD CONSTRAINT [tb_postagens_fk0] FOREIGN KEY ([TemaId]) REFERENCES [tb_temas]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagens] CHECK CONSTRAINT [tb_postagens_fk0]
GO
ALTER TABLE [tb_postagens] WITH CHECK ADD CONSTRAINT [tb_postagens_fk1] FOREIGN KEY ([UsuarioId]) REFERENCES [tb_usuarios]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_postagens] CHECK CONSTRAINT [tb_postagens_fk1]
GO



