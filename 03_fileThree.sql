-- Query 1: Complex Filtering
UPDATE inventory 
SET stock = 0 
WHERE last_sold < '2023-01-01' AND status = 'inactive';

-- Query 2: OR Logic & Parentheses
CREATE TABLE high_value_deals AS 
SELECT * 
FROM deals 
WHERE amount > 1000000 OR (sector = 'TECH' AND risky = 'N');
