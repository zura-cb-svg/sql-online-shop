-- 1. show all users with their orders
SELECT users.name, orders.total
FROM users
LEFT JOIN orders ON users.id = orders.user_id;

-- 2. count orders per user
SELECT users.name, COUNT(orders.id) AS order_count
FROM users
LEFT JOIN orders ON users.id = orders.user_id
GROUP BY users.name;

-- 3. total money spent
SELECT users.name, SUM(orders.total) AS total_spent
FROM users
LEFT JOIN orders ON users.id = orders.user_id
GROUP BY users.name;

-- 4. biggest order
SELECT users.name, orders.total
FROM users
JOIN orders ON users.id = orders.user_id
ORDER BY orders.total DESC
LIMIT 1;

-- 5. user with most orders
SELECT users.name, COUNT(orders.id) AS order_count
FROM users
LEFT JOIN orders ON users.id = orders.user_id
GROUP BY users.name
ORDER BY order_count DESC
LIMIT 1;