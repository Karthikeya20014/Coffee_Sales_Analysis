Create database Coffee_Sales;



-- Describing the Table Meta Data
use Coffee_Sales;
show tables;
describe coffe_sales;

-- Renaming the coffe_sales table to coffee
rename table coffe_sales to coffee;
describe coffee;

-- Exploratory Data Analysis
-- Sample data of the table
Select * from Coffee limit 5;
-- Retreiving the Number of Coffee Types Available
Select count(distinct coffee_name) No_Of_Varieties from Coffee;
-- Retreiving the types of Coffee available
Select distinct coffee_name Coffee_Names from Coffee;
-- Retreiving the different times in a day the coffee shop is available
Select distinct Time_of_Day from coffee;
-- No of different weekdays
Select distinct Weekday Day_of_Week from Coffee;
-- No of Different Months
Select Distinct Month_name Name_Of_Month from Coffee;

-- Exploratory Data Analysis
-- Revenue gerated through each type of Coffee
Select coffee_name Name_of_Coffee, round(sum(money),2) Total_Revenue from Coffee group by coffee_name order by sum(money) desc;
-- Highest Revenue Generating Coffee Type
Select coffee_name Name_of_Coffee, round(sum(money),2) Total_Revenue from Coffee group by coffee_name order by sum(money) desc limit 1;
-- Least Revenue Generating Coffee Type
Select coffee_name Name_of_Coffee, round(sum(money),2) Total_Revenue from Coffee group by coffee_name order by sum(money) limit 1;


-- Revenue gerated through each time of day
Select Time_of_Day, round(sum(money),2) Total_Revenue from Coffee group by Time_of_Day order by sum(money) desc;
-- Highest Revenue Generating time of day
Select Time_of_Day, round(sum(money),2) Total_Revenue from Coffee group by Time_of_Day order by sum(money) desc limit 1;
-- Least Revenue Generating time of day
Select Time_of_Day, round(sum(money),2) Total_Revenue from Coffee group by Time_of_Day order by sum(money) limit 1;


-- Analyzing Type of Coffee Sold at Each Time of Day
-- Analyzing the sales perfomance at Daytime
Select * from Coffee;
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Morning' group by Time_of_Day,coffee_name order by round(sum(money),2) desc;
-- Most Revenue Generating Cofee in Morning
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Morning' group by Time_of_Day,coffee_name order by round(sum(money),2) desc limit 1;
-- Least Revenue Generating Coffee in Morning
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Morning' group by Time_of_Day,coffee_name order by round(sum(money),2) limit 1;


-- Analyzing Type of Coffee Sold at Each Time of Day
-- Analyzing the sales perfomance at Afternoon
Select * from Coffee;
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Afternoon' group by Time_of_Day,coffee_name order by round(sum(money),2) desc;
-- Most Revenue Generating Cofee in Afternoon
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Afternoon' group by Time_of_Day,coffee_name order by round(sum(money),2) desc limit 1;
-- Least Revenue Generating Coffee in Afternoon
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Afternoon' group by Time_of_Day,coffee_name order by round(sum(money),2) limit 1;


-- Analyzing Type of Coffee Sold at Each Time of Day
-- Analyzing the sales perfomance at Night
Select * from Coffee;
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Night' group by Time_of_Day,coffee_name order by round(sum(money),2) desc;
-- Most Revenue Generating Cofee in Night
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Night' group by Time_of_Day,coffee_name order by round(sum(money),2) desc limit 1;
-- Least Revenue Generating Coffee in Night
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Night' group by Time_of_Day,coffee_name order by round(sum(money),2) limit 1;


-- Analysis of Sales based on day of the week
Select * from Coffee;
Select Weekday,round(sum(money),2) Total_Revenue from Coffee group by Weekday order by round(sum(money),2) desc;
-- Highest Revenue Generating Weekday
Select Weekday,round(sum(money),2) Total_Revenue from Coffee group by Weekday order by round(sum(money),2) desc limit 1;
-- Least Revenue Generating Weekday
Select Weekday,round(sum(money),2) Total_Revenue from Coffee group by Weekday order by round(sum(money),2) limit 1;



-- Analysis of Sales based on day of the Month_name
Select * from Coffee;
Select distinct Month_name from Coffee;
Select Month_name,round(sum(money),2) Total_Revenue from Coffee group by Month_name order by round(sum(money),2) desc;
-- Highest Revenue Generating Month_name
Select Month_name,round(sum(money),2) Total_Revenue from Coffee group by Month_name order by round(sum(money),2) desc limit 1;
-- Least Revenue Generating Month_name
Select Month_name,round(sum(money),2) Total_Revenue from Coffee group by Month_name order by round(sum(money),2) limit 1;

