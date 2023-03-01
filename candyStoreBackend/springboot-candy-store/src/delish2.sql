
CREATE TABLE product_category(
product_category_id serial PRIMARY KEY,
category_name varchar(255)
);

INSERT INTO product_category (category_name)
VALUES ('Chocolate'),
('Hard Candy'),
('Baked Goods');

SELECT * FROM product_category;


CREATE TABLE products (
product_id serial PRIMARY KEY,
sku varchar(255),
ch_name varchar(255),
description varchar(255),
price decimal (13,2),
image_url varchar(255),
product_category_id_fk int REFERENCES product_category(product_category_id) 
);

INSERT INTO products (sku, ch_name, description, price, image_url, product_category_id_fk)
VALUES ('MILK-CHOCO-1000','Milk Chocolate Truffel','Rich, milk chocolate truffels. Yum!', 3.99, 'https://cdn.pixabay.com/photo/2015/09/23/09/34/dark-953248__340.jpg',1),
	('MILK-CHOCO-1001', 'Milk Chocolate Turtle', 'Crunchy Pecans wrapped in gooey caramel with milk chocolate shell', 3.99,'https://images.unsplash.com/photo-1594149433195-fa8b4c8065b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNob2NvbGF0ZSUyMHR1cnRsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60' ,1),
	('MILK-CHOCO-1002', 'Milk Chocolate Mousse Bar','Smooth milk chocolate shell with fluffy, milk chocolate mousse filing', 2.50,'https://cdn.pixabay.com/photo/2019/03/04/13/01/dessert-4034053__340.jpg',1),
	
	('HARD-CNDY-1000', 'Giant Lollipops','Colorful pops of fun in all flavors! ', 3.99,'https://images.unsplash.com/photo-1575224300306-1b8da36134ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bG9sbGlwb3BzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',2),
	('HARD-CNDY-1001', 'Jelly Beans', 'Chewy bursts of fruit flavors', 3.99,'https://images.unsplash.com/photo-1581798269145-7512508289b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y2FuZHl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',2),
	('HARD-CNDY-1002', 'Gum Balls','Bubble chewing fun!', 2.50,'https://cdn.pixabay.com/photo/2014/03/13/15/44/candy-286664__340.jpg',2),
	
	('BAKE-CHOCO-1000', 'Chocolate Chip Cookies', 'Just like homemade!', 5.99,'https://cdn.pixabay.com/photo/2017/08/07/04/05/chocolate-2599637__340.jpg',3),
	('BAKE-CHOCO-1001', 'Cupcakes', 'Delectable gourmet cupcakes', 5.99,'https://images.unsplash.com/photo-1596223575327-99a5be4faf1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGN1cGNha2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60' ,3),
	('BAKE-CHOCO-1002', 'Pasteries', 'Freshly baked pasteries', 5.99,'https://images.unsplash.com/photo-1622941367239-8acd68fa946d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJha2VkJTIwZ29vZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',3);
	
SELECT * FROM products;
			
CREATE TABLE users(
user_id serial PRIMARY KEY,
user_name varchar(255)
);