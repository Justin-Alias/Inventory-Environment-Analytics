use test_env

select * from [dbo].[Products]

select * from [dbo].[Test_Environment_Inventory_Dataset]

select distinct product_id from [dbo].[Test_Environment_Inventory_Dataset]

-----------------------------------------------------------------------------

select a.[Order_Date_DD_MM_YYYY], a.[Product_ID], a.[Availability], a.[Demand], b.[Product_Name], b.[Unit_Price] from [dbo].[Test_Environment_Inventory_Dataset] as a left join [dbo].[Products] as b on a.product_id = b.product_id

-----------------------------------------------------------------------------
select * into new_table from
(select a.[Order_Date_DD_MM_YYYY], a.[Product_ID], a.[Availability], a.[Demand], b.[Product_Name], b.[Unit_Price] from [dbo].[Test_Environment_Inventory_Dataset] as a left join [dbo].[Products] as b on a.product_id = b.product_id
) x

-----------------------------------------------------------------------------

select * from new_table
-----------------------------------------------------------------------------

create database PROD

use PROD

select * from [dbo].[Prod_Env_Inventory_Dataset]

SELECT distinct Order_Date_DD_MM_YYYY
FROM [dbo].[Prod_Env_Inventory_Dataset]
where Order_Date_DD_MM_YYYY is null or Order_Date_DD_MM_YYYY = ''

--21 ---> 7
--22 ---> 11


SELECT distinct Product_ID
FROM [dbo].[Prod_Env_Inventory_Dataset] order by Product_ID
--where Order_Date_DD_MM_YYYY is null or Order_Date_DD_MM_YYYY = ''

update [dbo].[Prod_Env_Inventory_Dataset]
set Product_ID = 7 where Product_ID =21

update [dbo].[Prod_Env_Inventory_Dataset]
set Product_ID = 11 where Product_ID =22

select distinct Demand from [dbo].[Prod_Env_Inventory_Dataset]


--------------------------------

select * into new_table from 
(select a.[Order_Date_DD_MM_YYYY],
a.[Product_ID],a.[Availability],a.[Demand],b.[Product_Name],b.[Unit_Price]

from [dbo].[Prod_Env_Inventory_Dataset] as a
left join products as b on a.[Product_ID] =b.[Product_ID] ) x