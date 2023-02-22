--Cleaning Data in SQL Query

Select * from [dbo].[Product Sales Data ]

---------------------------------------------------------------------------------
--Standardize Data formate

Select * From [dbo].[Product Sales Data ] where ORDERNUMBER = 0
Select * From [dbo].[Product Sales Data ] where QUANTITYORDERED = 0
Select * From [dbo].[Product Sales Data ] where PRICEEACH = 0
Select * From [dbo].[Product Sales Data ] where ORDERLINENUMBER = 0
Select * From [dbo].[Product Sales Data ] where SALES = 0
Select * From [dbo].[Product Sales Data ] where ORDERDATE = null
Select * From [dbo].[Product Sales Data ] where STATUS = Null
Select * From [dbo].[Product Sales Data ] where CUSTOMERNAME = Null
Select * From [dbo].[Product Sales Data ] where PHONE = Null
Select * From [dbo].[Product Sales Data ] where ADDRESSLINE1 = Null
Select * From [dbo].[Product Sales Data ] where ADDRESSLINE2 = Null
Select * From [dbo].[Product Sales Data ] where CONTACTLASTNAME = Null
Select * From [dbo].[Product Sales Data ] where CONTACTFIRSTNAME = Null
Select * From [dbo].[Product Sales Data ] where DEALSIZE = Null

--Formate ORDER DATE
Select ORDERDATE From [dbo].[Product Sales Data ] 
Select ORDERDATE,CONVERT(date,ORDERDATE) As ORDER_DATE From [dbo].[Product Sales Data ] 

Alter table [dbo].[Product Sales Data ] 
Add  ORDER_DATE Date;

--Update Modified dates 
Update  [dbo].[Product Sales Data ]
set ORDER_DATE = CONVERT(Date,ORDERDATE)

Select  ORDER_DATE from [dbo].[Product Sales Data ]
Select  * from [dbo].[Product Sales Data ]

--------------------------------------------------------------------------------------------
--Round of the two decimal values for PRICEEACH
Select PRICEEACH from [dbo].[Product Sales Data ]

Select PRICEEACH,ROUND(PRICEEACH,2) As PRICE_EACH 
from [dbo].[Product Sales Data ]

Select PRICE_EACH from [dbo].[Product Sales Data ]

ALTER TABLE [dbo].[Product Sales Data ]
ADD PRICE_EACH DECIMAL (8,2);

UPDATE [dbo].[Product Sales Data ]
SET PRICE_EACH = ROUND(PRICEEACH,2)

Select * from [dbo].[Product Sales Data ]
----------------------------------------------------------------------------------------------

