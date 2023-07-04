select OrderID, OrderDate from orders
where month(OrderDate)='11';

select shipperID,ShipperName, OrderID, OrderDate from orders
join shippers using (shipperID)
where month(OrderDate)='11';

select EmployeeID, sum(price * Quantity) as total from employees 
join orders using(EmployeeID) join order_details 
using (OrderID) join products using(ProductID) group by EmployeeID;

Select orderId from order_details where productID in 
(select productId from products where supplierID in (Select SupplierID from suppliers where SupplierName ="Tokyo Traders"));
