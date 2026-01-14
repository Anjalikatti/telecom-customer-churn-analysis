USE  customers;
SELECT * FROM customer_data;

SELECT 
    Gender,
    COUNT(Gender) AS TotalCount,
    COUNT(Gender) * 100.0 / (SELECT 
            COUNT(*)
        FROM
            customer_data) AS percentage
FROM
    customer_data
GROUP BY Gender;

SELECT 
    Contract,
    COUNT(Contract) AS TotalCount,
    COUNT(Contract) * 100.0 / (SELECT 
            COUNT(*)
        FROM
            customer_data) AS percentage
FROM
    customer_data
GROUP BY Contract;

SELECT Customer_status,Count(Customer_status) as TotalCount,Sum(Total_revenue) as Total_Rev,
sum(Total_revenue) / (select sum(Total_revenue) from customer_data) *100 as RevPer
from customer_data
group by Customer_status;

SELECT 
    State,
    COUNT(State) AS TotalCount,
    COUNT(State) * 100.0 / (SELECT 
            COUNT(*)
        FROM
            customer_data) AS percentage
FROM
    customer_data
GROUP BY State
order by percentage desc;

select distinct Internet_Type
from customer_data;



