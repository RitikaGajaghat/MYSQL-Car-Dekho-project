create schema car_dekho;
use car_dekho;
-- read data--
select *from car_dekho;
-- total cars: to get a count of total records--
select count(*) from car_dekho;
-- the manager asked the employee how many cars will be available in 2023?--
select count(*) from car_dekho where year=2023;
-- the manager asked the employee how many cars is available in 20220,2021,2022--
select count(*) from car_dekho where year=2020;   # 74
select count(*) from car_dekho where year=2021;   #7
select count(*) from car_dekho where year=2022;   #7
-- group by_ --
select count(*) from car_dekho where year in (2020,2021,2022) group by year; 
-- client asked me to print the total of all cars by year. i dont see all the details--
select year, count(*) from car_dekho group by year; 
-- client asked to car dealer agent how many diesel cars will there be in 2020?-- 
select count(*) from car_dekho where year=2020 and fuel='diesel';   #20
-- client requested a car dealer agent how many petrol cars will be there in 2020?
select count(*) from car_dekho where year=2020 and fuel='petrol';    #51
select year, count(*) from car_dekho where fuel='petrol' group by year;
select year, count(*) from car_dekho where fuel='diesel' group by year;
select year, count(*) from car_dekho where fuel='cng' group by year;
-- manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;
-- the manager said to the employee all cars count details between 2015 and 2023, we need a complete list--
select count(*) from car_dekho where year between 2015 and 2023;    #4124
-- the manager said to the employee all cars details between 2015 to 2023, we need complete list--
select* from car_dekho where year between 2015 and 2023; 
 

  
  