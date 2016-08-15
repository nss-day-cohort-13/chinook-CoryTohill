--What are the respective total sales for each of those years?


SELECT
	strftime('%Y', i.InvoiceDate) as Year, SUM (i.Total)
FROM 
	Invoice i
WHERE 
	i.InvoiceDate LIKE "2009%"
OR 
	i.InvoiceDate LIKE "2011%"
GROUP BY Year