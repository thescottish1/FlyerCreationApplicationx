
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/20/2016 09:26:22
-- Generated from EDMX file: F:\Users\Scott-HaggisPC\Documents\Visual Studio 2015\Projects\FlyerCreationApplication\FlyerCreationApplication\FlyerCreationApplication.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Flyer];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_FlyerEventBaseProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_FlyerEventBaseProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_ThemeFlyerEventBase]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FlyerEventBases] DROP CONSTRAINT [FK_ThemeFlyerEventBase];
GO
IF OBJECT_ID(N'[dbo].[FK_FlyerEventBaseFlyerType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FlyerTypes] DROP CONSTRAINT [FK_FlyerEventBaseFlyerType];
GO
IF OBJECT_ID(N'[dbo].[FK_FlyerFormatFlyerEventBase]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FlyerEventBases] DROP CONSTRAINT [FK_FlyerFormatFlyerEventBase];
GO
IF OBJECT_ID(N'[dbo].[FK_FlyerScheduleFlyerEventBase]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FlyerEventBases] DROP CONSTRAINT [FK_FlyerScheduleFlyerEventBase];
GO
IF OBJECT_ID(N'[dbo].[FK_DealerBasePayment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_DealerBasePayment];
GO
IF OBJECT_ID(N'[dbo].[FK_DealerBaseHoursOfOperation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HoursOfOperations] DROP CONSTRAINT [FK_DealerBaseHoursOfOperation];
GO
IF OBJECT_ID(N'[dbo].[FK_DealerBaseDistributor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Distributors] DROP CONSTRAINT [FK_DealerBaseDistributor];
GO
IF OBJECT_ID(N'[dbo].[FK_RegionZone]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Zones] DROP CONSTRAINT [FK_RegionZone];
GO
IF OBJECT_ID(N'[dbo].[FK_SupplierBasePerson]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[People] DROP CONSTRAINT [FK_SupplierBasePerson];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_PersonContact];
GO
IF OBJECT_ID(N'[dbo].[FK_DealerBasePerson]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[People] DROP CONSTRAINT [FK_DealerBasePerson];
GO
IF OBJECT_ID(N'[dbo].[FK_FlyerEventBaseFlyerOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FlyerOrders] DROP CONSTRAINT [FK_FlyerEventBaseFlyerOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_DealerBaseFlyerOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FlyerOrders] DROP CONSTRAINT [FK_DealerBaseFlyerOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_RegionDealerBase]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DealerBases] DROP CONSTRAINT [FK_RegionDealerBase];
GO
IF OBJECT_ID(N'[dbo].[FK_SupplierBaseEntity1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SupplierRegions] DROP CONSTRAINT [FK_SupplierBaseEntity1];
GO
IF OBJECT_ID(N'[dbo].[FK_RegionEntity1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SupplierRegions] DROP CONSTRAINT [FK_RegionEntity1];
GO
IF OBJECT_ID(N'[dbo].[FK_SupplierBaseSupplierPricing]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SupplierPricings] DROP CONSTRAINT [FK_SupplierBaseSupplierPricing];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductSupplierPricing]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SupplierPricings] DROP CONSTRAINT [FK_ProductSupplierPricing];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Regions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Regions];
GO
IF OBJECT_ID(N'[dbo].[Zones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Zones];
GO
IF OBJECT_ID(N'[dbo].[FlyerFormats]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FlyerFormats];
GO
IF OBJECT_ID(N'[dbo].[FlyerTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FlyerTypes];
GO
IF OBJECT_ID(N'[dbo].[Themes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Themes];
GO
IF OBJECT_ID(N'[dbo].[FlyerSchedules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FlyerSchedules];
GO
IF OBJECT_ID(N'[dbo].[FlyerOrders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FlyerOrders];
GO
IF OBJECT_ID(N'[dbo].[People]', 'U') IS NOT NULL
    DROP TABLE [dbo].[People];
GO
IF OBJECT_ID(N'[dbo].[Contacts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contacts];
GO
IF OBJECT_ID(N'[dbo].[HoursOfOperations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HoursOfOperations];
GO
IF OBJECT_ID(N'[dbo].[Payments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Payments];
GO
IF OBJECT_ID(N'[dbo].[Distributors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Distributors];
GO
IF OBJECT_ID(N'[dbo].[SupplierPricings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SupplierPricings];
GO
IF OBJECT_ID(N'[dbo].[DealerBases]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DealerBases];
GO
IF OBJECT_ID(N'[dbo].[FlyerEventBases]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FlyerEventBases];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[SupplierBases]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SupplierBases];
GO
IF OBJECT_ID(N'[dbo].[SupplierRegions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SupplierRegions];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Regions'
CREATE TABLE [dbo].[Regions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [longname] nvarchar(max)  NOT NULL,
    [shortname] nvarchar(max)  NOT NULL,
    [isdeleted] bit  NOT NULL
);
GO

-- Creating table 'Zones'
CREATE TABLE [dbo].[Zones] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [shortname] nvarchar(max)  NOT NULL,
    [longname] nvarchar(max)  NOT NULL,
    [Region_Id] int  NOT NULL
);
GO

-- Creating table 'FlyerFormats'
CREATE TABLE [dbo].[FlyerFormats] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [formatlong] nvarchar(max)  NOT NULL,
    [formatshort] nvarchar(max)  NOT NULL,
    [isdeleted] bit  NOT NULL
);
GO

-- Creating table 'FlyerTypes'
CREATE TABLE [dbo].[FlyerTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [typenamelong] nvarchar(max)  NOT NULL,
    [typenameshort] nvarchar(max)  NOT NULL,
    [isdeleted] bit  NOT NULL,
    [FlyerEventBase_Id] int  NOT NULL
);
GO

-- Creating table 'Themes'
CREATE TABLE [dbo].[Themes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [description] nvarchar(max)  NOT NULL,
    [isdeleted] bit  NOT NULL
);
GO

-- Creating table 'FlyerSchedules'
CREATE TABLE [dbo].[FlyerSchedules] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [tminus] datetimeoffset  NOT NULL,
    [order] int  NOT NULL,
    [scheduleevent] nvarchar(max)  NOT NULL,
    [iscomplete] bit  NOT NULL,
    [isdeleted] bit  NOT NULL
);
GO

-- Creating table 'FlyerOrders'
CREATE TABLE [dbo].[FlyerOrders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [amoutordered] nvarchar(max)  NOT NULL,
    [dateordered] datetime  NOT NULL,
    [orderedby] nvarchar(max)  NOT NULL,
    [isdeleted] bit  NOT NULL,
    [lastchanged] nvarchar(max)  NOT NULL,
    [FlyerEventBase_Id] int  NOT NULL,
    [DealerBase_Id] int  NOT NULL
);
GO

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [fname] nvarchar(max)  NOT NULL,
    [lname] nvarchar(max)  NOT NULL,
    [title] nvarchar(max)  NOT NULL,
    [isDealer] bit  NOT NULL,
    [SupplierBase_Id] int  NOT NULL,
    [DealerBase_Id] int  NOT NULL,
    [Distributor_Id] int  NOT NULL
);
GO

-- Creating table 'Contacts'
CREATE TABLE [dbo].[Contacts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [contacttype] nvarchar(max)  NOT NULL,
    [contactinfo] nvarchar(max)  NOT NULL,
    [Person_Id] int  NOT NULL
);
GO

-- Creating table 'HoursOfOperations'
CREATE TABLE [dbo].[HoursOfOperations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [day] nvarchar(max)  NOT NULL,
    [opentime] nvarchar(max)  NOT NULL,
    [closetime] nvarchar(max)  NOT NULL,
    [isdeleted] bit  NOT NULL,
    [isclosed] bit  NOT NULL,
    [DealerBase_Id] int  NOT NULL
);
GO

-- Creating table 'Payments'
CREATE TABLE [dbo].[Payments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [type] nvarchar(max)  NOT NULL,
    [isaccepted] bit  NOT NULL,
    [isdeleted] bit  NOT NULL,
    [DealerBase_Id] int  NOT NULL
);
GO

-- Creating table 'Distributors'
CREATE TABLE [dbo].[Distributors] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [type] nvarchar(max)  NOT NULL,
    [isdeleted] bit  NOT NULL,
    [advanceddays] nvarchar(max)  NOT NULL,
    [instructions] nvarchar(max)  NOT NULL,
    [datestarted] datetime  NOT NULL,
    [dateended] datetime  NOT NULL,
    [DealerBase_Id] int  NOT NULL,
    [Addresses_Id] int  NOT NULL
);
GO

-- Creating table 'SupplierPricings'
CREATE TABLE [dbo].[SupplierPricings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [cost] int  NOT NULL,
    [SupplierBase_Id] int  NOT NULL,
    [Product_Id] int  NOT NULL
);
GO

-- Creating table 'DealerBases'
CREATE TABLE [dbo].[DealerBases] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [apid] nvarchar(max)  NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [isdeleted] bit  NOT NULL,
    [Region_Id] int  NOT NULL
);
GO

-- Creating table 'FlyerEventBases'
CREATE TABLE [dbo].[FlyerEventBases] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [start] datetime  NOT NULL,
    [end] datetime  NOT NULL,
    [theme] nvarchar(max)  NOT NULL,
    [isdeleted] bit  NOT NULL,
    [Theme_Id] int  NOT NULL,
    [FlyerFormat_Id] int  NOT NULL,
    [FlyerSchedule_Id] int  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [cost] int  NOT NULL,
    [gross] int  NOT NULL,
    [retail] int  NOT NULL,
    [isdeleted] bit  NOT NULL,
    [FlyerEventBase_Id] int  NOT NULL
);
GO

-- Creating table 'SupplierBases'
CREATE TABLE [dbo].[SupplierBases] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [isdeleted] bit  NOT NULL
);
GO

-- Creating table 'SupplierRegions'
CREATE TABLE [dbo].[SupplierRegions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SupplierBase_Id] int  NOT NULL,
    [Region_Id] int  NOT NULL
);
GO

-- Creating table 'Addresses'
CREATE TABLE [dbo].[Addresses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Street] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [province] nvarchar(max)  NOT NULL,
    [postalcode] nvarchar(max)  NOT NULL,
    [DealerBases_Id] int  NOT NULL,
    [SupplierBase_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Regions'
ALTER TABLE [dbo].[Regions]
ADD CONSTRAINT [PK_Regions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Zones'
ALTER TABLE [dbo].[Zones]
ADD CONSTRAINT [PK_Zones]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FlyerFormats'
ALTER TABLE [dbo].[FlyerFormats]
ADD CONSTRAINT [PK_FlyerFormats]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FlyerTypes'
ALTER TABLE [dbo].[FlyerTypes]
ADD CONSTRAINT [PK_FlyerTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Themes'
ALTER TABLE [dbo].[Themes]
ADD CONSTRAINT [PK_Themes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FlyerSchedules'
ALTER TABLE [dbo].[FlyerSchedules]
ADD CONSTRAINT [PK_FlyerSchedules]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FlyerOrders'
ALTER TABLE [dbo].[FlyerOrders]
ADD CONSTRAINT [PK_FlyerOrders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [PK_Contacts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'HoursOfOperations'
ALTER TABLE [dbo].[HoursOfOperations]
ADD CONSTRAINT [PK_HoursOfOperations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [PK_Payments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Distributors'
ALTER TABLE [dbo].[Distributors]
ADD CONSTRAINT [PK_Distributors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SupplierPricings'
ALTER TABLE [dbo].[SupplierPricings]
ADD CONSTRAINT [PK_SupplierPricings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DealerBases'
ALTER TABLE [dbo].[DealerBases]
ADD CONSTRAINT [PK_DealerBases]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FlyerEventBases'
ALTER TABLE [dbo].[FlyerEventBases]
ADD CONSTRAINT [PK_FlyerEventBases]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SupplierBases'
ALTER TABLE [dbo].[SupplierBases]
ADD CONSTRAINT [PK_SupplierBases]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SupplierRegions'
ALTER TABLE [dbo].[SupplierRegions]
ADD CONSTRAINT [PK_SupplierRegions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [FlyerEventBase_Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_FlyerEventBaseProduct]
    FOREIGN KEY ([FlyerEventBase_Id])
    REFERENCES [dbo].[FlyerEventBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FlyerEventBaseProduct'
CREATE INDEX [IX_FK_FlyerEventBaseProduct]
ON [dbo].[Products]
    ([FlyerEventBase_Id]);
GO

-- Creating foreign key on [Theme_Id] in table 'FlyerEventBases'
ALTER TABLE [dbo].[FlyerEventBases]
ADD CONSTRAINT [FK_ThemeFlyerEventBase]
    FOREIGN KEY ([Theme_Id])
    REFERENCES [dbo].[Themes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ThemeFlyerEventBase'
CREATE INDEX [IX_FK_ThemeFlyerEventBase]
ON [dbo].[FlyerEventBases]
    ([Theme_Id]);
GO

-- Creating foreign key on [FlyerEventBase_Id] in table 'FlyerTypes'
ALTER TABLE [dbo].[FlyerTypes]
ADD CONSTRAINT [FK_FlyerEventBaseFlyerType]
    FOREIGN KEY ([FlyerEventBase_Id])
    REFERENCES [dbo].[FlyerEventBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FlyerEventBaseFlyerType'
CREATE INDEX [IX_FK_FlyerEventBaseFlyerType]
ON [dbo].[FlyerTypes]
    ([FlyerEventBase_Id]);
GO

-- Creating foreign key on [FlyerFormat_Id] in table 'FlyerEventBases'
ALTER TABLE [dbo].[FlyerEventBases]
ADD CONSTRAINT [FK_FlyerFormatFlyerEventBase]
    FOREIGN KEY ([FlyerFormat_Id])
    REFERENCES [dbo].[FlyerFormats]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FlyerFormatFlyerEventBase'
CREATE INDEX [IX_FK_FlyerFormatFlyerEventBase]
ON [dbo].[FlyerEventBases]
    ([FlyerFormat_Id]);
GO

-- Creating foreign key on [FlyerSchedule_Id] in table 'FlyerEventBases'
ALTER TABLE [dbo].[FlyerEventBases]
ADD CONSTRAINT [FK_FlyerScheduleFlyerEventBase]
    FOREIGN KEY ([FlyerSchedule_Id])
    REFERENCES [dbo].[FlyerSchedules]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FlyerScheduleFlyerEventBase'
CREATE INDEX [IX_FK_FlyerScheduleFlyerEventBase]
ON [dbo].[FlyerEventBases]
    ([FlyerSchedule_Id]);
GO

-- Creating foreign key on [DealerBase_Id] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_DealerBasePayment]
    FOREIGN KEY ([DealerBase_Id])
    REFERENCES [dbo].[DealerBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DealerBasePayment'
CREATE INDEX [IX_FK_DealerBasePayment]
ON [dbo].[Payments]
    ([DealerBase_Id]);
GO

-- Creating foreign key on [DealerBase_Id] in table 'HoursOfOperations'
ALTER TABLE [dbo].[HoursOfOperations]
ADD CONSTRAINT [FK_DealerBaseHoursOfOperation]
    FOREIGN KEY ([DealerBase_Id])
    REFERENCES [dbo].[DealerBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DealerBaseHoursOfOperation'
CREATE INDEX [IX_FK_DealerBaseHoursOfOperation]
ON [dbo].[HoursOfOperations]
    ([DealerBase_Id]);
GO

-- Creating foreign key on [DealerBase_Id] in table 'Distributors'
ALTER TABLE [dbo].[Distributors]
ADD CONSTRAINT [FK_DealerBaseDistributor]
    FOREIGN KEY ([DealerBase_Id])
    REFERENCES [dbo].[DealerBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DealerBaseDistributor'
CREATE INDEX [IX_FK_DealerBaseDistributor]
ON [dbo].[Distributors]
    ([DealerBase_Id]);
GO

-- Creating foreign key on [Region_Id] in table 'Zones'
ALTER TABLE [dbo].[Zones]
ADD CONSTRAINT [FK_RegionZone]
    FOREIGN KEY ([Region_Id])
    REFERENCES [dbo].[Regions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegionZone'
CREATE INDEX [IX_FK_RegionZone]
ON [dbo].[Zones]
    ([Region_Id]);
GO

-- Creating foreign key on [SupplierBase_Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [FK_SupplierBasePerson]
    FOREIGN KEY ([SupplierBase_Id])
    REFERENCES [dbo].[SupplierBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SupplierBasePerson'
CREATE INDEX [IX_FK_SupplierBasePerson]
ON [dbo].[People]
    ([SupplierBase_Id]);
GO

-- Creating foreign key on [Person_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_PersonContact]
    FOREIGN KEY ([Person_Id])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonContact'
CREATE INDEX [IX_FK_PersonContact]
ON [dbo].[Contacts]
    ([Person_Id]);
GO

-- Creating foreign key on [DealerBase_Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [FK_DealerBasePerson]
    FOREIGN KEY ([DealerBase_Id])
    REFERENCES [dbo].[DealerBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DealerBasePerson'
CREATE INDEX [IX_FK_DealerBasePerson]
ON [dbo].[People]
    ([DealerBase_Id]);
GO

-- Creating foreign key on [FlyerEventBase_Id] in table 'FlyerOrders'
ALTER TABLE [dbo].[FlyerOrders]
ADD CONSTRAINT [FK_FlyerEventBaseFlyerOrder]
    FOREIGN KEY ([FlyerEventBase_Id])
    REFERENCES [dbo].[FlyerEventBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FlyerEventBaseFlyerOrder'
CREATE INDEX [IX_FK_FlyerEventBaseFlyerOrder]
ON [dbo].[FlyerOrders]
    ([FlyerEventBase_Id]);
GO

-- Creating foreign key on [DealerBase_Id] in table 'FlyerOrders'
ALTER TABLE [dbo].[FlyerOrders]
ADD CONSTRAINT [FK_DealerBaseFlyerOrder]
    FOREIGN KEY ([DealerBase_Id])
    REFERENCES [dbo].[DealerBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DealerBaseFlyerOrder'
CREATE INDEX [IX_FK_DealerBaseFlyerOrder]
ON [dbo].[FlyerOrders]
    ([DealerBase_Id]);
GO

-- Creating foreign key on [Region_Id] in table 'DealerBases'
ALTER TABLE [dbo].[DealerBases]
ADD CONSTRAINT [FK_RegionDealerBase]
    FOREIGN KEY ([Region_Id])
    REFERENCES [dbo].[Regions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegionDealerBase'
CREATE INDEX [IX_FK_RegionDealerBase]
ON [dbo].[DealerBases]
    ([Region_Id]);
GO

-- Creating foreign key on [SupplierBase_Id] in table 'SupplierRegions'
ALTER TABLE [dbo].[SupplierRegions]
ADD CONSTRAINT [FK_SupplierBaseEntity1]
    FOREIGN KEY ([SupplierBase_Id])
    REFERENCES [dbo].[SupplierBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SupplierBaseEntity1'
CREATE INDEX [IX_FK_SupplierBaseEntity1]
ON [dbo].[SupplierRegions]
    ([SupplierBase_Id]);
GO

-- Creating foreign key on [Region_Id] in table 'SupplierRegions'
ALTER TABLE [dbo].[SupplierRegions]
ADD CONSTRAINT [FK_RegionEntity1]
    FOREIGN KEY ([Region_Id])
    REFERENCES [dbo].[Regions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegionEntity1'
CREATE INDEX [IX_FK_RegionEntity1]
ON [dbo].[SupplierRegions]
    ([Region_Id]);
GO

-- Creating foreign key on [SupplierBase_Id] in table 'SupplierPricings'
ALTER TABLE [dbo].[SupplierPricings]
ADD CONSTRAINT [FK_SupplierBaseSupplierPricing]
    FOREIGN KEY ([SupplierBase_Id])
    REFERENCES [dbo].[SupplierBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SupplierBaseSupplierPricing'
CREATE INDEX [IX_FK_SupplierBaseSupplierPricing]
ON [dbo].[SupplierPricings]
    ([SupplierBase_Id]);
GO

-- Creating foreign key on [Product_Id] in table 'SupplierPricings'
ALTER TABLE [dbo].[SupplierPricings]
ADD CONSTRAINT [FK_ProductSupplierPricing]
    FOREIGN KEY ([Product_Id])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductSupplierPricing'
CREATE INDEX [IX_FK_ProductSupplierPricing]
ON [dbo].[SupplierPricings]
    ([Product_Id]);
GO

-- Creating foreign key on [Distributor_Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [FK_DistributorPerson]
    FOREIGN KEY ([Distributor_Id])
    REFERENCES [dbo].[Distributors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DistributorPerson'
CREATE INDEX [IX_FK_DistributorPerson]
ON [dbo].[People]
    ([Distributor_Id]);
GO

-- Creating foreign key on [Addresses_Id] in table 'Distributors'
ALTER TABLE [dbo].[Distributors]
ADD CONSTRAINT [FK_DistributorAddress]
    FOREIGN KEY ([Addresses_Id])
    REFERENCES [dbo].[Addresses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DistributorAddress'
CREATE INDEX [IX_FK_DistributorAddress]
ON [dbo].[Distributors]
    ([Addresses_Id]);
GO

-- Creating foreign key on [DealerBases_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_AddressDealerBase]
    FOREIGN KEY ([DealerBases_Id])
    REFERENCES [dbo].[DealerBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AddressDealerBase'
CREATE INDEX [IX_FK_AddressDealerBase]
ON [dbo].[Addresses]
    ([DealerBases_Id]);
GO

-- Creating foreign key on [SupplierBase_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_SupplierBaseAddress]
    FOREIGN KEY ([SupplierBase_Id])
    REFERENCES [dbo].[SupplierBases]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SupplierBaseAddress'
CREATE INDEX [IX_FK_SupplierBaseAddress]
ON [dbo].[Addresses]
    ([SupplierBase_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------