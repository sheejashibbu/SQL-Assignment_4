create table  country(Country_Id int primary key, Country_name varchar(100) not null, population_Area decimal);
INSERT INTO country (Country_Id,Country_name,population_Area) values(101,'India', '150000000.00'),
(102, 'USA', '2500000.00'),(103, 'UK', '2000000.00'),(104, 'Australia', '26000000.00'),(105, 'Canada', '1600000'),(106, 'Qatar', '1400000.00'),
(107, 'Bhutan', '1200000.00'), (108, 'Nepal', '26000000.00'),(109, 'France', '1600000.00'),(110, 'Germany', '3000000.00');

select* from country;
create table  Person(Person_Id int primary key, first_name varchar(100) , 
Last_name varchar(100),Population_Rating decimal, Country_Id int, Country_name varchar(100) );
INSERT INTO Person (Person_Id,first_name,Last_name,Population_Rating,Country_Id,Country_name) values(001,'Simi', 'Sujith',7.0,101,'India'),
(002,'Simth', 'Mark',5.0,104,'Australia'),(003,'George', 'Samual',4.5,105,'Canada'),(004,'Manu', 'Samual',5.5,109,'France'),
(005,'George', 'Simith',7.5,110,'Germany'),(006,'Mariyam', 'Mohammad',8.5,106,'Qatar'),(007,'smitha', 'Mathew',7.0,101,'India'),
(008,'Sanu', 'Singh',6.5,108,'Nepal'),(009,'George', 'Bush',8.5,102,'USA'),(010,'Samson', 'James',7.5,103,'UK');
select* from Person;
select distinct country_name from person;
select concat(first_name, " ",Last_name) as Name from person;
select* from person where Population_Rating>4.0;
select Country_name from country where population_Area>1000000.00;
select concat(first_name, " ",Last_name) as Name from person where country_name='USA' and Population_Rating> 4.5;
select concat(first_name, " ",Last_name) as Name from person where country_name= null;
select concat(first_name, " ",Last_name) as Name from person where country_name='USA' or country_name='canada' or country_name='Uk';
select concat(first_name, " ",Last_name) as Name from person where country_name!='India' and country_name!='Australia';
select Country_name from country where population_Area between 5000000.00 and 1000000.00; 
select Country_name from country where Country_name not like'C%';