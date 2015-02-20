
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/20/2015 00:06:32
-- Generated from EDMX file: C:\Users\Bohua\Documents\Visual Studio 2013\Projects\Abacus\Abacus.Service\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Abacus];
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

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ProductName] nvarchar(max)  NOT NULL,
    [Sales_detail_Id] int  NOT NULL
);
GO

-- Creating table 'Sales_invoice'
CREATE TABLE [dbo].[Sales_invoice] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Sales_Date] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Sales_detail'
CREATE TABLE [dbo].[Sales_detail] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Sales_invoice_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sales_invoice'
ALTER TABLE [dbo].[Sales_invoice]
ADD CONSTRAINT [PK_Sales_invoice]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sales_detail'
ALTER TABLE [dbo].[Sales_detail]
ADD CONSTRAINT [PK_Sales_detail]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Sales_detail_Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_ProductSales_detail]
    FOREIGN KEY ([Sales_detail_Id])
    REFERENCES [dbo].[Sales_detail]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductSales_detail'
CREATE INDEX [IX_FK_ProductSales_detail]
ON [dbo].[Products]
    ([Sales_detail_Id]);
GO

-- Creating foreign key on [Sales_invoice_Id] in table 'Sales_detail'
ALTER TABLE [dbo].[Sales_detail]
ADD CONSTRAINT [FK_Sales_detailSales_invoice]
    FOREIGN KEY ([Sales_invoice_Id])
    REFERENCES [dbo].[Sales_invoice]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Sales_detailSales_invoice'
CREATE INDEX [IX_FK_Sales_detailSales_invoice]
ON [dbo].[Sales_detail]
    ([Sales_invoice_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------