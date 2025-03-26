SELECT*FROM pizza_sales

SELECT DATENAME(WEEKDAY, order_date) AS day_name,SUM(total_price) AS total_sale_of_day
FROM pizza_sales
GROUP BY DATENAME(WEEKDAY, order_date)


SELECT DATENAME(WEEKDAY, order_date) AS week_day,DATEPART(HOUR, order_time) AS order_hour,SUM(order_details_id)
FROM pizza_sales
GROUP BY DATENAME(WEEKDAY, order_date),DATEPART(HOUR, order_time)
HAVING DATENAME(WEEKDAY, order_date)='Friday'