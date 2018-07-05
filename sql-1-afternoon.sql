Table-People
1
CREATE TABLE Person ( ID INTEGER PRIMARY KEY AUTOINCREMENT, Name string, Age intger, Height integer, City string, FavoriteColor string);
2

INSERT INTO Person ( Name, Age, Height, City, FavoriteColor) VALUES("James Dean",21,190, "Dallas", "red");
INSERT INTO Person ( Name, Age, Height, City, FavoriteColor) VALUES("Alex Strong",25,182, "Phoenix", "orange");
INSERT INTO Person ( Name, Age, Height, City, FavoriteColor) VALUES("Bernie Sanders",32,166, "Los Angeles", "green");
INSERT INTO Person ( Name, Age, Height, City, FavoriteColor) VALUES("Crispy Bacon",18,180, "Denver", "yellow");
INSERT INTO Person ( Name, Age, Height, City, FavoriteColor) VALUES("Jimmy Dean",30,185, "New York", "purple");


3
SELECT * FROM Person ORDER BY Height DESC;
4
SELECT * FROM Person ORDER BY Height ASC;
5
SELECT * FROM Person ORDER BY Age DESC;

6
SELECT * FROM Person WHERE Age > 20;
7
SELECT * FROM Person WHERE Age =18;

8
SELECT * FROM Person WHERE Age <20 or Age > 30;
9
SELECT * FROM Person WHERE Age != 27;
10
SELECT * FROM Person WHERE FavoriteColor != "red";
11
SELECT * FROM Person WHERE FavoriteColor !="red" AND FavoriteColor !="blue";
12
SELECT * FROM Person WHERE FavoriteColor ="orange" or FavoriteColor = "green"
13
SELECT * FROM Person WHERE FavoriteColor IN ( "orange", "green", "blue" );
14
SELECT * FROM Person Where FavoriteColor IN ("yellow" , "purple" );








Table-Orders
1
CREATE TABLE Orders ( PersonID integer, ProductName string, ProductPrice float, Quantity integer );
2
INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity ) VALUES (1, "Pants", 12.50,20 );
INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity ) VALUES (2, "Shoes", 14.50,7);
INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity ) VALUES (3, "Hats", 15.50,123);
INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity ) VALUES (4, "Chonies", 17.50,66 );
INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity ) VALUES (5, "Shirts", 20.50,89);

3
SELECT * FROM Orders;

4
SELECT SUM(Quantity) From Orders;

5

SELECT SUM(ProductPrice*Quantity) FROM Orders;
6
SELECT SUM(ProductPrice* Quantity) FROM Orders WHERE PersonID =3;


Table-Artist

1
INSERT INTO Artist (Name) VALUES ('Davey');
INSERT INTO Artist (Name) VALUES ('Korea');
INSERT INTO Artist (Name) VALUES ('Eron');

2
SELECT * FROM Artist ORDER BY Name Desc LIMIT 10;
3
SELECT * FROM Artist ORDER BY Name ASC LIMIT 5;
4
SELECT * FROM Artist WHERE Name LIKE 'Black%';
5
SELECT * FROM Artist WHERE Name LIKE '%Black%';

Table-Employee



1
SELECT FirstName, LastName FROM Employee WHERE City = "Calgary";
2
SELECT FirstName, LastName, Max(Birthdate) FROM Employee;
3
SELECT FirstName, LastName, Min(Birthdate) FROM Employee;
4
SELECT * FROM Employee WHERE ReportsTo = 2;
5
SELECT COUNT(*) FROM Employee WHERE City ="Lethbridge";

Table-Invoice
1
SELECT COUNT(*) FROM Invoice WHERE BillingCountry = 'USA';
2
SELECT Max(total) FROM Invoice;
3
SELECT Min(total) FROM Invoice;

4
SELECT * FROM Invoice WHERE Total > 5;

5
SELECT COUNT(*) FROM Invoice WHERE Total < 5;
6
SELECT Count(*) From Invoice WHERE BiillingState in ('CA', 'TX', 'AZ');
7
SELECT AVG(Total) From Invoice;
8
SELECT SUM(Total) FROM Invoice;