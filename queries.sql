-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select Product.ProductName, Category.CategoryName
from product
join Category on Product.CategoryId = Category.Id   

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select [Order].Id, [Order].OrderDate,  Shipper.CompanyName
from [Order]
join Shipper on [Order].ShipVia = Shipper.Id
wHERE [Order].OrderDate BETWEEN '2000-01-01' AND '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT OrderDetail.OrderId as Id, Product.ProductName as Product, OrderDetail.Quantity
from OrderDetail
join Product on OrderDetail.ProductId = Product.Id

WHERE OrderDetail.OrderId =10251 
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
Select [Order].Id As Order_ID, Customer.CompanyName As Company_Name, Employee.LastName As Last_Name
From [Order]
Join Customer on [Order].CustomerId = Customer.Id
Join Employee on [Order].EmployeeId = Employee.Id