﻿
USE WebStor;
GO

--Завдання 1

SELECT DISTINCT o.[MFR]
FROM [dbo].[CUSTOMERS] c
INNER JOIN [dbo].[ORDERS] o ON c.[CUST_REP] = o.[REP]
WHERE o.[ORDER_DATE] BETWEEN '2008-01-01' AND '2009-01-01'
AND c.[COMPANY] LIKE '%CORP%';
GO


--Завдання 2

SELECT c.[CUST_NUM], MONTH(ORDER_DATE) AS Місяць_замовлення, COUNT(DISTINCT ORDER_NUM) AS Кількість_унікальних_замовлень
FROM [dbo].[CUSTOMERS] c
LEFT OUTER JOIN [dbo].[ORDERS] o ON c.[CUST_NUM] = o.[CUST]
WHERE o.[ORDER_DATE] BETWEEN '2008-01-01' AND '2009-01-01'
AND c.[COMPANY] LIKE '%CORP%'
GROUP BY c.[CUST_NUM], MONTH(o.[ORDER_DATE])
GO


--Завдання 3

SELECT c.[CUST_NUM], UPPER(c.[COMPANY]) AS Назва_компанії, p.[DESCRIPTION]
FROM [dbo].[CUSTOMERS] c
LEFT OUTER JOIN [dbo].[ORDERS] o ON c.[CUST_NUM] = o.[CUST]
LEFT OUTER JOIN [PRODUCTS] p ON p.[PRODUCT_ID] = o.[PRODUCT]
WHERE o.[ORDER_DATE] BETWEEN '2008-01-01' AND '2009-01-01'
AND c.[COMPANY] LIKE '%CORP%';
GO