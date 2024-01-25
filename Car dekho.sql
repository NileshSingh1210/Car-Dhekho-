create schema  cars;

use cars;

-- 1. Read Data

select * from car_dekho;

-- 2. Total Cars - To get a count of total records

select count(*) from car_dekho;

-- 3. The manager asked the employee how many cars will available in 2023?
    select count(*) from car_dekho
    where year = 2023 ;
    
-- 4. The manager asked the employee how many cars will available in 2020, 2021, 2022?
        select count(*) as car_availability, year from car_dekho
    where year in (2020,2021, 2022)
    group by  Year;
    
-- 5 . Client asked me to print the total of all cars by year, I dont see all the detail
    
     select count(*) as car_availability, year from car_dekho
    group by  Year;
    
-- 6. Client asked to car dealer agent, How many diesel car will be in 2020?

    select Count(*) from  car_dekho
    where 
      fuel = "Diesel"  AND  year= 2020;   
      
-- 7.  Client asked to car dealer agent, How many diesel car will be in 2020?
         
    select Count(*) from  car_dekho
    where 
      fuel = "Petrol"  AND  year= 2020;  
 
 -- 8. The  Manager told the employee to give a print all the fuel cars (petrol, CNG and Diesel) come by all year?
 
       select year, count(*) from car_dekho where fuel = "Petrol" group by year;
       
       select year, count(*) from car_dekho where fuel = "CNG" group by year;
       
       select year, count(*) from car_dekho where fuel = "Diesel" group by year;
	
-- 9.  Manager said which year there were more than 100 cars in a given year ?

      select year,  count(*) as total from car_dekho
      group by year
       having count(*) > 100;
       
-- 10. The manager said to the employee all cars count detail b/n 2015 and 2023, We need complete list

       Select count(*) from car_dekho
       where year  between 2015 and 2023 ;
       
-- 11.  The manager said to the employee all cars detail b/n 2015 and 2023, We need complete list

       Select * from car_dekho
       where year  between 2015 and 2023 ;
     

