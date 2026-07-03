USE seafood_trade_db;
GO

CREATE TABLE dbo.stg_seafood_world (
    Year INT,
    Trade_Flow NVARCHAR(20),
    Partner NVARCHAR(150),
    Partner_ISO NVARCHAR(20),
    HS_Code NVARCHAR(20),
    Commodity NVARCHAR(255),
    Quantity_kg FLOAT,
    Unit NVARCHAR(20),
    Value_USD DECIMAL(18,2)
);
GO

CREATE TABLE dbo.stg_seafood_partner (
    Year INT,
    Trade_Flow NVARCHAR(20),
    Partner NVARCHAR(150),
    Partner_ISO NVARCHAR(20),
    HS_Code NVARCHAR(20),
    Commodity NVARCHAR(255),
    Quantity_kg FLOAT,
    Unit NVARCHAR(20),
    Value_USD DECIMAL(18,2)
);
GO


-- Tạo View gộp dữ liệu staging
USE seafood_trade_db;
GO

CREATE OR ALTER VIEW dbo.v_all_stage AS
SELECT
    TRY_CONVERT(INT, [Year]) AS [Year],
    LTRIM(RTRIM(Trade_Flow)) AS Trade_Flow,
    LTRIM(RTRIM(Partner_Country)) AS Partner_Country,
    LTRIM(RTRIM(CAST(HS_Code AS NVARCHAR(20)))) AS HS_Code,
    LTRIM(RTRIM(Product_Description)) AS Product_Description,
    TRY_CONVERT(FLOAT, Weight_KG) AS Weight_KG,
    TRY_CONVERT(FLOAT, Value_USD) AS Value_USD,
    'World' AS Data_Scope
FROM dbo.stg_seafood_world

UNION ALL

SELECT
    TRY_CONVERT(INT, [Year]) AS [Year],
    LTRIM(RTRIM(Trade_Flow)) AS Trade_Flow,
    LTRIM(RTRIM(Partner_Country)) AS Partner_Country,
    LTRIM(RTRIM(CAST(HS_Code AS NVARCHAR(20)))) AS HS_Code,
    LTRIM(RTRIM(Product_Description)) AS Product_Description,
    TRY_CONVERT(FLOAT, Weight_KG) AS Weight_KG,
    TRY_CONVERT(FLOAT, Value_USD) AS Value_USD,
    'Partner' AS Data_Scope
FROM dbo.stg_seafood_partner;
GO



--Tạo các bảng Dimension
CREATE TABLE dbo.dim_year (
    YearKey INT IDENTITY(1,1) PRIMARY KEY,
    [Year] INT NOT NULL UNIQUE
);
GO

CREATE TABLE dbo.dim_trade_flow (
    TradeFlowKey INT IDENTITY(1,1) PRIMARY KEY,
    Trade_Flow NVARCHAR(20) NOT NULL UNIQUE
);
GO

CREATE TABLE dbo.dim_partner (
    PartnerKey INT IDENTITY(1,1) PRIMARY KEY,
    Partner_Country NVARCHAR(150) NOT NULL UNIQUE
);
GO

CREATE TABLE dbo.dim_product (
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,
    HS_Code NVARCHAR(20) NOT NULL,
    Product_Description NVARCHAR(255) NULL
);
GO

-- Đưa dữ liệu vào các bảng Dimension
INSERT INTO dbo.dim_year ([Year])
SELECT DISTINCT [Year]
FROM dbo.v_all_stage
WHERE [Year] IS NOT NULL;
GO

INSERT INTO dbo.dim_trade_flow (Trade_Flow)
SELECT DISTINCT Trade_Flow
FROM dbo.v_all_stage
WHERE Trade_Flow IS NOT NULL;
GO

INSERT INTO dbo.dim_partner (Partner_Country)
SELECT DISTINCT Partner_Country
FROM dbo.v_all_stage
WHERE Partner_Country IS NOT NULL;
GO

INSERT INTO dbo.dim_product (HS_Code, Product_Description)
SELECT DISTINCT HS_Code, Product_Description
FROM dbo.v_all_stage
WHERE HS_Code IS NOT NULL;
GO


-- Tạo bảng Fact
CREATE TABLE dbo.fact_seafood_trade (
    TradeID BIGINT IDENTITY(1,1) PRIMARY KEY,
    YearKey INT NOT NULL,
    TradeFlowKey INT NOT NULL,
    PartnerKey INT NOT NULL,
    ProductKey INT NOT NULL,
    Data_Scope NVARCHAR(20) NOT NULL,
    Weight_KG FLOAT NULL,
    Value_USD FLOAT NOT NULL,

    CONSTRAINT FK_fact_year
        FOREIGN KEY (YearKey) REFERENCES dbo.dim_year(YearKey),

    CONSTRAINT FK_fact_trade_flow
        FOREIGN KEY (TradeFlowKey) REFERENCES dbo.dim_trade_flow(TradeFlowKey),

    CONSTRAINT FK_fact_partner
        FOREIGN KEY (PartnerKey) REFERENCES dbo.dim_partner(PartnerKey),

    CONSTRAINT FK_fact_product
        FOREIGN KEY (ProductKey) REFERENCES dbo.dim_product(ProductKey)
);
GO


-- Nạp dữu liệu vào fact
INSERT INTO dbo.fact_seafood_trade (
    YearKey,
    TradeFlowKey,
    PartnerKey,
    ProductKey,
    Data_Scope,
    Weight_KG,
    Value_USD
)
SELECT
    y.YearKey,
    tf.TradeFlowKey,
    p.PartnerKey,
    pr.ProductKey,
    s.Data_Scope,
    s.Weight_KG,
    s.Value_USD
FROM dbo.v_all_stage s
JOIN dbo.dim_year y
    ON s.[Year] = y.[Year]
JOIN dbo.dim_trade_flow tf
    ON s.Trade_Flow = tf.Trade_Flow
JOIN dbo.dim_partner p
    ON s.Partner_Country = p.Partner_Country
JOIN dbo.dim_product pr
    ON s.HS_Code = pr.HS_Code
    AND ISNULL(s.Product_Description, '') = ISNULL(pr.Product_Description, '');
GO

-- Tạo view cho tableau
USE seafood_trade_db;
GO

CREATE OR ALTER VIEW dbo.vw_seafood_trade_for_tableau AS
SELECT
    y.[Year],
    tf.Trade_Flow,
    p.Partner_Country,
    pr.HS_Code,
    pr.Product_Description,
    f.Data_Scope,
    f.Weight_KG,
    f.Value_USD,
    f.Value_USD / 1000000000.0 AS Value_Billion_USD
FROM dbo.fact_seafood_trade f
JOIN dbo.dim_year y
    ON f.YearKey = y.YearKey
JOIN dbo.dim_trade_flow tf
    ON f.TradeFlowKey = tf.TradeFlowKey
JOIN dbo.dim_partner p
    ON f.PartnerKey = p.PartnerKey
JOIN dbo.dim_product pr
    ON f.ProductKey = pr.ProductKey;
GO

-- Tạo view riêng cho dữ liệu tổng
CREATE OR ALTER VIEW dbo.vw_seafood_world AS
SELECT *
FROM dbo.vw_seafood_trade_for_tableau
WHERE Data_Scope = 'World';
GO
-- Tạo view riêng cho dữ liệu thị trường
CREATE OR ALTER VIEW dbo.vw_seafood_partner AS
SELECT *
FROM dbo.vw_seafood_trade_for_tableau
WHERE Data_Scope = 'Partner';
GO

SELECT TOP 10 *
FROM dbo.vw_seafood_world;

SELECT TOP 10 *
FROM dbo.vw_seafood_partner;