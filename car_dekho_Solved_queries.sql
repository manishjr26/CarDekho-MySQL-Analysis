-- Schema/Database name = cars, Table Name = car_dekho

SELECT * FROM cars.car_dekho;
use cars;

-- Question 1 - Read Cars 
select * from car_dekho;

-- Question 2 - Total Cars
select count(name) from car_dekho;

-- Question 3 - Cars Available in 2023
select count(name) from car_dekho where year=2023;

-- Question 4 - Cars Available in 2020,2021,2022
select count(name) from car_dekho where year IN(2020,2021,2022);

-- Question 5 - Print all the cars in a year
select year,count(*) from car_dekho group by year;

-- Question 6 - Diesel Cars in 2020
select count(*) from car_dekho where fuel='DIESEL' and year=2020;

-- Question 7 - Petrol Cars in 2020
select count(*) from car_dekho where fuel='PETROL' and year=2020;

-- Question 8 - Petrol, Diesel, Cng cars in all year
select year,count(fuel) from car_dekho where fuel IN('PETROL','DIESEL','CNG') group by year;


-- Question 9 - Year with cars count more than 100
select year,count(fuel) from car_dekho group by year having count(fuel)>100;


-- Question 10 -
select count(*) from car_dekho where year between 2013 and 2023;


-- Question 11 -
select * from car_dekho where year between 2015 and 2023;