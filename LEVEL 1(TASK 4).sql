#TASK 4
#Determine the % of restaurants that offer online delivery
SELECT 
    ROUND(SUM(`Has Online delivery` = 'Yes') * 100.0 / COUNT(*), 2) AS percentage_online_delivery
FROM 
    cognifyz;

#Compare the avg ratings of restauarnts with and without delivery.
use tasks;
SELECT 
    `Has Online delivery` AS delivery_status,
    ROUND(AVG(`Aggregate rating`), 2) AS avg_rating
FROM 
    cognifyz
GROUP BY 
    `Has Online delivery`;
