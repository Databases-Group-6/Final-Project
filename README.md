# Final-Project
ITCS 3160 - Database Design and Implementation: Project Group 6\
Aaron Dickerson, Jay Patel, Joshua Clayton, Swapnil Katakwar, Yoel Kiflezghi

Project Scope\
Food delivery services have become a popular norm in society.
Students especially love using food delivery services to order food on campus. 
The scope of this project is to add a ratings system to an existing food delivery services’ database.
The ratings system will be used to judge the speed and quality of the delivery from a delivery person to a person recipient.
A recipient can be a student, faculty, or staff member on campus. 
The first deliverable will consist of a GitHub link that will contain the Case diagram, business rules for the updated database, and a fully normalized EERD. 

Business Rules\
•	Customers (student, faculty, staff) can rate a driver/delivery person after delivery of an order  
•	Customers (student, faculty, staff) can rate a restaurant from which they ordered food  
•	All ratings will be from 1 – 5 stars, with 1 representing terrible food/service and 5 representing great food/service  
•	Each delivery/driver person and restaurant will have their average rating from customers saved  
•	Customers will be able to view the average ratings of restaurants  
•	Database system administrators will be able to view the average ratings of drivers and restaurants  
•	All drivers will be students, but not all students are drivers. Drivers will be a subtype of student  
•	Customers are subtype of persons, but are represented by the entities of staff, faculty, and student  
•	All Restaurants will have a menu and a menu will have menu item(s) with nutritional information. Orders will pull nutritional information from menu item(s) in the order.  

Entity Relationship Diagram\
![alt text](https://imgur.com/uRxsB05.png)

Query Optimization and EXPLAIN Statement Discussion\
Optimization is a key aspect of queries and scripts as its usually not possible to the resourcces needed to make a script run as quickly as possible.
It is also important to ensure overoptimzation does not occur as this can be unneccessary and result in excessive usage of resources. The EXPLAIN statement
is a good tool that can be used to optimize SQL statements and scripts. With the help of EXPLAIN, you can see where you should add indexes to tables so 
that the statement executes faster by using indexes to find rows. You can also use EXPLAIN to check whether the optimizer joins the tables in an optimal order
