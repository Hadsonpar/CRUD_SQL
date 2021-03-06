USE [master]
GO
/****** Object:  Database [BD_TEST]    Script Date: 31/08/2020 02:00:04 ******/
CREATE DATABASE [BD_TEST]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TEST', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TEST.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TEST_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TEST_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BD_TEST] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_TEST].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_TEST] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_TEST] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_TEST] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_TEST] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_TEST] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_TEST] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_TEST] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_TEST] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_TEST] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_TEST] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_TEST] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_TEST] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_TEST] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_TEST] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_TEST] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_TEST] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_TEST] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_TEST] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_TEST] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_TEST] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_TEST] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_TEST] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_TEST] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BD_TEST] SET  MULTI_USER 
GO
ALTER DATABASE [BD_TEST] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_TEST] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_TEST] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_TEST] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_TEST] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_TEST] SET QUERY_STORE = OFF
GO
USE [BD_TEST]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 31/08/2020 02:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[IdEmpleado] [int] NOT NULL,
	[Empleado] [varchar](50) NULL,
	[IdJefe] [int] NULL,
 CONSTRAINT [PK_EMPLEADO] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JEFE]    Script Date: 31/08/2020 02:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JEFE](
	[IdJefe] [int] NOT NULL,
	[Jefe] [varchar](50) NULL,
 CONSTRAINT [PK_JEFE] PRIMARY KEY CLUSTERED 
(
	[IdJefe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 31/08/2020 02:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[contrasena] [varchar](250) NOT NULL,
	[intentos] [int] NOT NULL,
	[nivelSeg] [decimal](18, 0) NOT NULL,
	[fechaReg] [date] NOT NULL,
 CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Empleado], [IdJefe]) VALUES (1, N'NOMBRE APELLIDO #1', 1)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Empleado], [IdJefe]) VALUES (2, N'NOMBRE APELLIDO #2', 2)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Empleado], [IdJefe]) VALUES (3, N'NOMBRE APELLIDO #3', 1)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Empleado], [IdJefe]) VALUES (4, N'NOMBRE APELLIDO #4', 2)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Empleado], [IdJefe]) VALUES (5, N'NOMBRE APELLIDO #5', 2)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Empleado], [IdJefe]) VALUES (6, N'NOMBRE APELLIDO #6', 3)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Empleado], [IdJefe]) VALUES (7, N'NOMBRE APELLIDO #7', 3)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Empleado], [IdJefe]) VALUES (8, N'NOMBRE APELLIDO #8', 1)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Empleado], [IdJefe]) VALUES (9, N'NOMBRE APELLIDO #9', 1)
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Empleado], [IdJefe]) VALUES (10, N'NOMBRE APELLIDO #10', 3)
INSERT [dbo].[JEFE] ([IdJefe], [Jefe]) VALUES (1, N'UZI')
INSERT [dbo].[JEFE] ([IdJefe], [Jefe]) VALUES (2, N'CARLOS')
INSERT [dbo].[JEFE] ([IdJefe], [Jefe]) VALUES (3, N'HADSON')
SET IDENTITY_INSERT [dbo].[USUARIO] ON 

INSERT [dbo].[USUARIO] ([Id], [usuario], [contrasena], [intentos], [nivelSeg], [fechaReg]) VALUES (2, N'HADSON', N'h0L@1234', 3, CAST(5 AS Decimal(18, 0)), CAST(N'2020-08-31' AS Date))
INSERT [dbo].[USUARIO] ([Id], [usuario], [contrasena], [intentos], [nivelSeg], [fechaReg]) VALUES (3, N'CESAR01', N'Ce$ar1234', 3, CAST(5 AS Decimal(18, 0)), CAST(N'2020-08-31' AS Date))
INSERT [dbo].[USUARIO] ([Id], [usuario], [contrasena], [intentos], [nivelSeg], [fechaReg]) VALUES (4, N'LIZZET', N'LiZ12345', 3, CAST(5 AS Decimal(18, 0)), CAST(N'2020-08-31' AS Date))
SET IDENTITY_INSERT [dbo].[USUARIO] OFF
ALTER TABLE [dbo].[USUARIO] ADD  CONSTRAINT [DF_Usuario_fechaReg]  DEFAULT (getdate()) FOR [fechaReg]
GO
ALTER TABLE [dbo].[EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADO_JEFE] FOREIGN KEY([IdJefe])
REFERENCES [dbo].[JEFE] ([IdJefe])
GO
ALTER TABLE [dbo].[EMPLEADO] CHECK CONSTRAINT [FK_EMPLEADO_JEFE]
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_USUARIO]    Script Date: 31/08/2020 02:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author - Hadson Paredes>
-- Create date: <Create Date - 30-08-2020>
-- Description:	<Actualizar registros según id>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ACTUALIZAR_USUARIO]
 @usuario varchar(50)
,@contrasena varchar(250)
,@intentos int
,@nivelSeg decimal(18,0)
,@fechaReg date
,@id int
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE USUARIO 
    SET     usuario = @usuario
		   ,contrasena = @contrasena
           ,intentos = @intentos
           ,nivelSeg = @nivelSeg
           ,fechaReg = @fechaReg
	WHERE	id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_USUARIO]    Script Date: 31/08/2020 02:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author - Hadson Paredes>
-- Create date: <Create Date - 30-08-2020>
-- Description:	<Eliminar registros según id>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ELIMINAR_USUARIO]
 @id int
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM USUARIO WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_USUARIO]    Script Date: 31/08/2020 02:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author - Hadson Paredes>
-- Create date: <Create Date - 30-08-2020>
-- Description:	<Insertar registros>
-- =============================================
CREATE PROCEDURE [dbo].[SP_INSERTAR_USUARIO]
 @usuario varchar(50)
,@contrasena varchar(250)
,@intentos int
,@nivelSeg decimal(18,0)
,@fechaReg date
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [dbo].[USUARIO]
           ([usuario]
           ,[contrasena]
           ,[intentos]
           ,[nivelSeg]
           ,[fechaReg])
     VALUES
           (@usuario
           ,@contrasena
           ,@intentos 
           ,@nivelSeg 
           ,@fechaReg)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SELECCIONAR_USUARIO]    Script Date: 31/08/2020 02:00:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author - Hadson Paredes>
-- Create date: <Create Date - 30-08-2020>
-- Description:	<Selecionar registros según id>
-- =============================================
CREATE PROCEDURE [dbo].[SP_SELECCIONAR_USUARIO]
 @id int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT  usuario
           ,contrasena
           ,intentos
           ,nivelSeg
           ,fechaReg
	FROM	 [dbo].[USUARIO]
	WHERE	id = @id
END
GO
USE [master]
GO
ALTER DATABASE [BD_TEST] SET  READ_WRITE 
GO
