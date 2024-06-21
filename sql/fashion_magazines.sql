SELECT customers.customer_name AS 'Customer', --rename the column
--select the sum statement and rename
PRINTF('$%.2f', SUM(subscriptions.subscription_length * subscriptions.price_per_month)) AS "Amount Due"
FROM orders

--join to customers to link customer id and get names
JOIN customers
    ON orders.customer_id = customers.customer_id

--join to subscriptions to link subscription id
JOIN subscriptions
    ON orders.subscription_id = subscriptions.subscription_id

--filter the results by 'unpaid' and type of fashion magazine
WHERE orders.order_status = 'unpaid'
    AND subscriptions.description = 'Fashion Magazine'

-- group by customers to get information presented by individual
GROUP BY customers.customer_name
