/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT p.Name, c.name
from products as p
inner join categories as c
on p.CategoryID = c.CategoryID
where c.name = 'Computers';

 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select p.name , p.price, r.rating
 from products as p
 inner join reviews as r
 on p.ProductID = r.ProductID
 where r.Rating = '5';
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select e.FirstName, e.LastName, sum(s.Quantity) as total
from sales as s
inner join employees as e
on e.EmployeeID = s.EmployeeID
group by e.EmployeeID
order by total desc;
/* joins: find the name of the department, and the name of the category for Appliances and Games */

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */