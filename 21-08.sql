----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT CompanyName, OrderID 
FROM Orders, Shippers 
WHERE Shippers.ShipperID = Orders.Shipvia AND OrderID = 10275;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT CompanyName, OrderID 
FROM Orders JOIN Shippers 
ON Shippers.ShipperID = Orders.Shipvia 
WHERE OrderID = 10275;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select Employees.EmployeeID, FirstName, LastName, OrderID 
from Employees join Orders 
on Employees.EmployeeID = Orders.EmployeeID 
order by EmployeeID;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select ProductID, ProductName, City, Country 
from Products P join Suppliers S 
on P.SupplierID = S.SupplierID

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select CompanyName, count(*) 
from Orders O join Shippers S 
on O.ShipVia = S.ShipperID 
group by CompanyName

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select p.ProductID, p.ProductName, sum(Quantity) as จำนวนที่ขายได้ทั้งหมด 
from Products P join [Order Details] od 
on P.ProductID = od.ProductID 
group by p.ProductID, p.ProductName 
order by 1

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select OrderID, CompanyName, FirstName, LastName , ShipAddress 
from Employees E join Orders O join Customers C 
on O.CustomerID = C.CustomerID 
on O.EmployeeID = E.EmployeeID

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select E.EmployeeID, FirstName,count(*) as [จำนวน order], sum(Freight) as [Sum of Freight] 
from Employees E join Orders O 
on E.EmployeeID = O.EmployeeID
where year(orderdate) = 1998
group by E.EmployeeID, FirstName
order by 3

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select distinct P.ProductID, P.ProductName 
from Products P join [Order Details] OD join Orders O join Employees E
on E.EmployeeID = O.EmployeeID on O.OrderID = OD.OrderID on P.ProductID = OD.ProductID
where e.FirstName = 'nancy'
order by ProductID

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select distinct S.Country 
from 

Customers C 
join orders O 
on C.CustomerID = O.CustomerID 
join [Order Details] OD 
on O.OrderID = OD.OrderID 
join Products P 
on OD.ProductID = P.ProductID
join Suppliers S
on S.SupplierID = P.SupplierID
where C.CompanyName = 'Around the Horn'

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select P.ProductID, P.ProductName, Sum(Quantity) as [sum of Quantity ]
from 
Customers C 
join Orders O 
on C.CustomerID = O.CustomerID
join [Order Details] OD 
on OD.OrderID = O.OrderID
join Products P
on P.ProductID = OD.ProductID

where C.CompanyName = 'Around the Horn'
group by P.ProductID, P.ProductName
order by 1


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select O.OrderID, E.FirstName,
sum((OD.OrderID * OD.UnitPrice * (1-OD.Discount))) TotalCash
from Orders O join Employees E 
on o.EmployeeID = E.EmployeeID
join [Order Details] OD
on O.OrderID = OD.OrderID

group by o.OrderID, E.FirstName
order by OrderID

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

