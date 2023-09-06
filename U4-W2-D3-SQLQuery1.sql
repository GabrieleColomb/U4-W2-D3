--1) Numero totale degli ordini
Select Count(*) As NumeroTotaleOrdini
From Orders;

--2) Numero totale di clienti
Select Count(*) As NumeroTotaleClienti
From Customers;

--3) Numero totale di clienti che abitano a Londra
Select Count(*) As NumeroClientiLondra
From Customers
Where City = 'London';

--4) La media aritmetica del costo del trasporto di tutti gli ordini effettuati
Select AVG(Freight) As MediaCostoTrasportoTotale
From Orders;

-- 5) La media aritmetica del costo del trasporto dei soli ordini effettuati dal cliente “BOTTM”
Select AVG(Freight) As MediaCostoTrasportoClienteBOTTM
From Orders
Where CustomerID = 'BOTTM';

--6) Totale delle spese di trasporto effettuate raggruppate per id cliente
Select CustomerID, SUM(Freight) As TotaleSpeseTrasportoPerCliente
From Orders
Group by CustomerID;

--7) Numero totale di clienti raggruppati per città di appartenenza
Select City, Count(*) As NumeroClientiPerCitta
From Customers
Group by City;

--8) Totale di UnitPrice * Quantity raggruppato per ogni ordine
Select OrderID, SUM(UnitPrice * Quantity) As TotaleProdottoPerOrdine
From [Order Details]
Group by OrderID;

--9) Totale di UnitPrice * Quantity solo dell'ordine con id=10248
Select OrderID, SUM(UnitPrice * Quantity) As TotaleProdottoPerOrdine10248
From [Order Details]
Where OrderID = 10248
Group by OrderID;

--10) Numero di prodotti censiti per ogni categoria
Select CategoryName, Count(*) As NumeroProdottiPerCategoria
From Categories
Inner join Products On Categories.CategoryID = Products.CategoryID
Group by CategoryName;

--11) Numero totale di ordini raggruppati per paese di spedizione (ShipCountry)
Select ShipCountry, Count(*) As NumeroOrdiniPerPaese
From Orders
Group by ShipCountry;

--12) La media del costo del trasporto raggruppati per paese di spedizione (ShipCountry)
Select ShipCountry, AVG(Freight) As MediaCostoTrasportoPerPaese
From Orders
Group by ShipCountry;