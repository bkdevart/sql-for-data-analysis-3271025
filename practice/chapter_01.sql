-- 1st
SELECT state
FROM Customer;
-- 2nd
SELECT LastName,
  OrderId
FROM Customer
  JOIN Orders on Customer.CustomerID = Orders.CustomerID;