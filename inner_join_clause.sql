INSERT INTO `products`
(`name`, `category_id`)
VALUES 
('second product', 2),
('last product', 1);

-- use iner join to select clause
SELECT products.name, categories.name
FROM products
INNER JOIN categories
ON products.category_id = categories.id;