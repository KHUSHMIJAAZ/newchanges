# Virtual Shopping Cart 

A virtual shopping web application built using Java Servlet and JSP technologies and MySQL for database. The project features Model, View, and Controller (MVC) architecture.

This project allows users to create accounts and login to individual accounts.Users are able to add items to the cart in the shopping page. Users can finalize and purchase items in the cart, and items appear in the inventory. Inventory and balance are stored in the database.


1. Clone repository

* Database
1. To link with database, change **sqlurl**, **sqluser**, and **sqlpass** variables in **UserDao** and **InventoryDao** to respective database url, username, and password of local MySQL database.
2. Execute sql scripts in **mysql-scripts** folder to create **shoppingcart** database and **user** and **inventory** tables. You might have to execute each section of the sql script file separately.

* To Run
1. Run project inside IDE environment with embedded **Apache Tomcat** server

