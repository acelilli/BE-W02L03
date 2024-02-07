--1) Numero totale degli ordini,
SELECT COUNT(OrderID) as TotaleOrdini from Orders
--2) Numero totale di clienti
SELECT COUNT(CustomerID) as TotaleClienti from Customers
--3) Numero totale di clienti che abitano a Londra
SELECT COUNT(CustomerId) as ClientiLondra from Customers where city='London'
--4) La media aritmetica del costo del trasporto di tutti gli ordini effettuati
SELECT AVG(Freight) AS TotaleCostoTrasporto FROM Orders
--5) La media aritmetica del costo del trasporto dei soli ordini effettuati dal cliente "BOTTM"
SELECT AVG(Freight) as TotaleCostiBOTTM from Orders where CustomerId = 'BOTTM'
--6) Totale delle spese di trasporto effettuate raggruppate per id cliente -> GROUP BY
SELECT CustomerID, SUM(Freight) as TotaleSpeseTrasporto from Orders group by CustomerId
--7) Numero totale di clienti raggruppati per città di appartenenza
SELECT City, COUNT(CustomerID) as TotaleClientiCitta from Customers group by City
--8) Totale di UnitPrice * Quantity raggruppato per ogni ordine
SELECT OrderId, SUM(UnitPrice*Quantity) as TotalePriceQuantity from [Order Details] group by OrderId
--9) Totale di UnitPrice * Quantity solo dell'ordine con id=10248
SELECT SUM(UnitPrice*Quantity) as TotaleOrdine10248 from [Order Details] where OrderId= 10248
--10) Numero di prodotti censiti per ogni categoria
SELECT CategoryId, COUNT(ProductId) as CensimentoProdotti from Products group by CategoryId
--11) Numero totale di ordini raggruppati per paese di spedizione (ShipCountry)
SELECT ShipCountry, COUNT(OrderId) as CensimentoOrdini from Orders group by ShipCountry
--12) La media del costo del trasporto raggruppati per paese di spedizione (ShipCountry)
SELECT ShipCountry, AVG(Freight) as MediaTrasporto from Orders group by ShipCountry
