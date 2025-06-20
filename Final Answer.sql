-- Final project question.
-- How much was the most expensive order in the dataset?

SELECT MAX(order_total) AS most_expensive_order
FROM (
    SELECT 
        od.order_id,
        SUM(mi.price) AS order_total
    FROM 
        order_details od
    JOIN 
        menu_items mi ON od.item_id = mi.menu_item_id
    GROUP BY 
        od.order_id
) AS totals;
