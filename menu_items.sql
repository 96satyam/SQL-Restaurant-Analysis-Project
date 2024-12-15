USE restaurant_db;

-- 1. View the menu_items table.
SELECT * FROM menu_items ;

-- 2. Numebre of items in the menu.
SELECT COUNT(*) FROM menu_items;

-- 3. WHAT are the most and least expensive items on the menu.
SELECT * FROM menu_items
ORDER BY price;

-- 4. How many itelian dishes are on the menu.
SELECT COUNT(*) FROM menu_items
WHERE category = 'Italian' ;
-- 5. What are the least and most expensive itelian dishes on the menu.
SELECT * FROM menu_items 
WHERE category = 'Italian'  
ORDER BY price ;
-- 6. How many dishes are in the each categeory.
SELECT  category, count(menu_item_id) as total_items  
FROM menu_items
GROUP BY category ; 

-- 7. What is the average dishes price in each category.alter
SELECT category , AVG(price) AS average_price
FROM menu_items
GROUP BY category ; 

