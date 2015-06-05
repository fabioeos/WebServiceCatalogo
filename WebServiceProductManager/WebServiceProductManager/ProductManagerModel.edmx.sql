
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/05/2015 12:27:22
-- Generated from EDMX file: D:\EI_2sem\SIE\projeto\WebServiceCatalogo\WebServiceProductManager\WebServiceProductManager\ProductManagerModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ProductManager];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Product'
CREATE TABLE [dbo].[Product] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Stock] int  NOT NULL,
    [Price] nvarchar(max)  NOT NULL,
    [ProductCode] nvarchar(450)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Product'
ALTER TABLE [dbo].[Product]
ADD CONSTRAINT [PK_Product]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

ALTER TABLE [dbo].[Product]
ADD CONSTRAINT [UNIQUE_ProductCode] 
	UNIQUE (ProductCode);
GO

INSERT INTO [dbo].[Product] ([Name], [Stock], [Price], [ProductCode]) VALUES (N'Gskill Ripjaws X DDR3-1600MHz 2x4GB ', 20, N'62,90€', N'RAM1000')
INSERT INTO [dbo].[Product] ([Name], [Stock], [Price], [ProductCode]) VALUES (N'SSD Samsung 2.5" 850 Pro 256GB', 10, N'169,90€', N'SSD1000')
INSERT INTO [dbo].[Product] ([Name], [Stock], [Price], [ProductCode]) VALUES (N'Motherboard Asus H97-PRO GAMER', 10, N'135,40€', N'MB1000')
INSERT INTO [dbo].[Product] ([Name], [Stock], [Price], [ProductCode]) VALUES (N'Motherboard Asus Z97 Maximus VII Hero/ACU', 5, N'229,90€', N'MB1001')
