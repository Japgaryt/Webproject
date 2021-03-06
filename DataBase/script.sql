USE [contabilidad_general]
GO
/****** Object:  Table [dbo].[asientos_contables]    Script Date: 24/10/2021 22:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asientos_contables](
	[id_asiento_contable] [int] IDENTITY(1,1) NOT NULL,
	[id_cuenta] [int] NULL,
	[id_comprobante] [int] NULL,
	[id_empresa] [int] NULL,
	[secuencil_asiento] [int] NULL,
	[numero_cuenta] [int] NULL,
	[tipo_destino] [varchar](90) NULL,
	[total_credito] [float] NULL,
	[total_debito] [float] NULL,
	[moneda] [float] NULL,
	[descripcion_asiento] [varchar](120) NULL,
	[estado] [int] NULL,
	[fecha_ingreso_asiento] [datetime] NULL,
	[codigo_usuario] [int] NULL,
 CONSTRAINT [PK_asientos_contables] PRIMARY KEY CLUSTERED 
(
	[id_asiento_contable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 24/10/2021 22:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[codigo_cliente] [int] NOT NULL,
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nit] [varchar](20) NULL,
	[primer_nombre] [varchar](20) NULL,
	[segundo_nombre] [varchar](20) NULL,
	[primer_apellido] [varchar](20) NULL,
	[segundo_apellido] [varchar](20) NULL,
	[correo] [varchar](40) NULL,
	[telefono] [varchar](15) NULL,
	[direccion] [varchar](120) NULL,
	[evento] [int] NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[codigo_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comprobantes]    Script Date: 24/10/2021 22:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comprobantes](
	[id_comprobante] [int] IDENTITY(1,1) NOT NULL,
	[id_factura] [int] NULL,
	[id_empresa] [int] NULL,
	[nombre_empresa] [varchar](50) NULL,
	[fecha_registro] [datetime] NULL,
	[fecha_modidicacion] [datetime] NULL,
	[descripcion] [varchar](150) NULL,
	[total_debito] [float] NULL,
	[total_credito] [float] NULL,
	[estado] [int] NULL,
	[id_cuenta] [int] NULL,
 CONSTRAINT [PK_comprobantes] PRIMARY KEY CLUSTERED 
(
	[id_comprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cuentas]    Script Date: 24/10/2021 22:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuentas](
	[id_cuenta] [int] IDENTITY(1,1) NOT NULL,
	[numero_cuenta] [int] NULL,
	[nombre_cuenta] [varchar](150) NULL,
	[fecha_registro] [datetime] NULL,
	[saldo] [float] NULL,
 CONSTRAINT [PK_cuentas] PRIMARY KEY CLUSTERED 
(
	[id_cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 24/10/2021 22:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresa](
	[id_empresa] [int] IDENTITY(1,1) NOT NULL,
	[fecha_registro] [datetime] NULL,
	[nombre_empresa] [varchar](90) NULL,
 CONSTRAINT [PK_empresa] PRIMARY KEY CLUSTERED 
(
	[id_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura_cabecera]    Script Date: 24/10/2021 22:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura_cabecera](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[nit] [varchar](20) NULL,
	[codigo_cliente] [int] NULL,
	[direccion] [varbinary](150) NULL,
	[monto_total] [float] NULL,
 CONSTRAINT [PK_factura_cabecera] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura_detalle]    Script Date: 24/10/2021 22:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura_detalle](
	[id_factura_detalle] [int] IDENTITY(1,1) NOT NULL,
	[id_factura] [int] NULL,
	[codigo_producto] [varchar](30) NULL,
	[precio_producto] [float] NULL,
	[cantidad_producto] [float] NULL,
	[total_detalle] [float] NULL,
	[id_producto] [int] NULL,
 CONSTRAINT [PK_factura_detalle] PRIMARY KEY CLUSTERED 
(
	[id_factura_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[parametrizaciones]    Script Date: 24/10/2021 22:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parametrizaciones](
	[id_parametrizacion] [int] IDENTITY(1,1) NOT NULL,
	[id_cuenta] [int] NULL,
	[numero_cuenta] [int] NULL,
	[nombre_cuenta] [varchar](50) NULL,
	[estado_cuenta] [int] NULL,
	[codigo_transaccion] [varchar](50) NULL,
 CONSTRAINT [PK_parametrizaciones] PRIMARY KEY CLUSTERED 
(
	[id_parametrizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 24/10/2021 22:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[codigo_producto] [varchar](20) NULL,
	[id_proveedor] [int] NULL,
	[descripcion] [varchar](70) NULL,
	[cantidad] [float] NULL,
	[precio_unitario] [float] NULL,
	[total_precio] [float] NULL,
	[evento] [int] NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 24/10/2021 22:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[codigo_proveedor] [int] NOT NULL,
	[id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varbinary](40) NULL,
	[direccion] [varbinary](50) NULL,
	[telefono] [varbinary](10) NULL,
 CONSTRAINT [PK_proveedores] PRIMARY KEY CLUSTERED 
(
	[codigo_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 24/10/2021 22:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[codigo_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre_usuario] [varbinary](50) NULL,
	[tipo_usuario] [varchar](50) NULL,
	[contrasena] [varbinary](50) NULL,
	[sucursal] [varchar](50) NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[codigo_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
