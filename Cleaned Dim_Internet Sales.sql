--Cleaned Dim_Internet Sales--
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey] -- ,[PromotionKey]
  --,[CurrencyKey]
  -- ,[SalesTerritoryKey]
  , 
  [SalesOrderNumber] -- ,[SalesOrderLineNumber]
  --  ,[RevisionNumber]
  -- ,[OrderQuantity]
  --,[UnitPrice]
  --,[ExtendedAmount]
  --,[UnitPriceDiscountPct]
  --,[DiscountAmount]
  -- ,[ProductStandardCost]
  -- ,[TotalProductCost]
  , 
  [SalesAmount] --,[TaxAmt]
  --,[Freight]
  -- ,[CarrierTrackingNumber]
  -- ,[CustomerPONumber]
  -- ,[OrderDate]
  --,[DueDate]
  -- ,[ShipDate]
FROM 
  [dbo].[FactInternetSales] 
WHERE 
  LEFT(OrderDateKey, 4) >= Year(
    GETDATE()
  ) -2 --Makes sure that only two years of date come from extraction
ORDER by 
  OrderDateKey asc
