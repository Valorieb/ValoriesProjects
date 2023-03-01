CREATE TABLE product_category(
product_category_id serial PRIMARY KEY,
category_name varchar(255)
);

INSERT INTO product_category (category_name)
VALUES ('Chocolate'),
('Caramel'),
('Hard Candy'),
('Lollipops'),
('Gummies'),
('Bubblegum'),
('Cupcakes'),
('Cookies');

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
VALUES ('MILK-CHOCO-1000','Chocolate Truffel','Rich milk chocolate truffels. Yum!', 3.99, '/assets/images/products/ChocolateTruffles.png',1),
	('MILK-CHOCO-1001', 'Raspberry Truffels', 'Rich milk chocolate truffels with raspberry filling. Yum!', 3.99,'/assets/images/products/RaspberryTruffles.png' ,1),
	('MILK-CHOCO-1002', 'Chocolate Peanut Butter Truffles','Rich milk chocolate truffels with peanut butter filling. Yum!', 3.99,'/assets/images/products/ChocolatePeanutButterTruffles.png' ,1),
	('MILK-CHOCO-1003', 'Chocolate Caramel Truffles', 'Rich milk chocolate truffels with caramel filling. Yum!', 3.99, '/assets/images/products/ChocolateCaramelTruffles.png', 1),
	('MILK-CHOCO-1004', 'Chocolate Macademia Nut Truffles','Rich milk chocolate truffels with macedemia nuts. Yum!',3.99,'/assets/images/products/ChocolateMacadamiaNutTruffles.png',1),
	('MILK-CHOCO-1005', 'Pumpkin Truffles', 'Rich pumpkin flavor. Yum!', 3.99, '/assets/images/products/PumpkinTruffles.png' ,1),
	('MILK-CHOCO-1006', 'Chocolate Turtle', 'Crunchy Pecans wrapped in gooey caramel with smooth milk chocolate shell', 3.99,'/assets/images/products/ChocolateTurtles.png' ,1),
	('MILK-CHOCO-1007', 'Milk Chocolate Bar', 'The best milk chocolate bar ever!', 3.99, '/assets/images/products/ChocolateBars.png' ,1),
	('MILK-CHOCO-1008', 'Chocolate Covered Marshmallows', 'Nothing goes better together than marshmallows and chocolate!',3.99,'/assets/images/products/ChocolateCoveredMarshmallows.png',1),
	('MILK-CHOCO-1009', 'Milk Chocolate Coconut Haystacks', 'Mountains of chocolatey delishious covered coconuts.',3.99,'/assets/images/products/MilkChocolateCoconutHaystack.png',1),
	('MILK-CHOCO-1010', 'Chocolate Malt Balls', 'Crunchy malt balls covered in creamy chocolate',3.99, '/assets/images/products/ChocolateMaltBalls.png',1),
	('MILK-CHOCO-1011','Dark Chocolate Almond Bark', 'The best bark you ever tasted.',3.99, '/assets/images/products/DarkChocolateAlmondBark.png' ,1),
	
	('CRML-CNDY-1000', 'Caramel squares', 'Delicious caramel squares.',3.99,'/assets/images/products/CaramelSquares.png' , 2),
	('CRML-CNDY-1001', 'Foiled Caramel Candy', 'Caramel candy wrapped in foil',3.99,'/assets/images/products/FoiledCaramel.png',2),
	('CRML-CNDY-1002', 'Caramel Cream Candy', 'Creamy caramel candy', 3.99,'/assets/images/products/CaramelCreams.png',2),
	('CRML-CNDY-1003', 'Caramel Filled Chocolate Bites', 'Delicious chocolates filled with caramel', 3.99,'/assets/images/products/CaramleFilledChocolates.png',2),
	('CRML-CNDY-1004', 'Hard Caramel Candy', 'Melt in your mouth delicious hard caramel candies', 3.99 , '/assets/images/products/CaramelHardCandies.png', 2),
	('CRML-CNDY-1005', 'Peanut Butter Caramel Balls', 'Peanut Butter and caramel rolled into delicious treats.',3.99, '/assets/images/products/PeanutButterCaramelBalls.png' ,2),
	('CRML-CNDY-1006','Caramel Apple Lollipops', 'Green apple lollipop covered in caramel.', 3.99, '/assets/images/products/CaramelAppleCandies.png' ,2),
	('CRML-CNDY-1007', 'Caramel Fudge', 'Ooey, Gooey, delicious caramel fudge!', 3.99, '/assets/images/products/CaramelFudge.png' ,2),
	('CRML-CNDY-1008', 'Caramel Vanilla Candy', 'Caramel candies with vanilla',3.99, '/assets/images/products/CaramelVanillaCandies.png' ,2),
	('CRML-CNDY-1009','Caramel Marshmallow Candy','Caramel candies with marshmallow.',3.99, '/assets/images/products/CaramelMarshmallowCandies.png' ,2),
	
	
	('HARD-CNDY-1000', 'Jelly Beans', 'Chewy bursts of fruit flavors', 3.99,'/assets/images/products/JellyBeans.png',3),
	('HARD-CNDY-1001', 'Butterscotch', 'Individually wrapped butterscotch candies.', 1.99, '/assets/images/products/ButterscotchCandies.png' ,3),
	('HARD-CNDY-1002', 'Assorted Fruit Flavors', 'Individually wrapped fruit flavored candies.', 1.99, '/assets/images/products/AssortedFruitFlavorCandies.png' ,3),
	('HARD-CNDY-1003', 'Sour Strawberry Candy', 'Individually wrapped strawberry flavored sour candies.', 1.99, '/assets/images/products/SourCandies.png' ,3),
	('HARD-CNDY-1004', 'Jawbreakers', 'Hard as rock candy.', 1.99, '/assets/images/products/Jawbreakers.png' ,3),
	('HARD-CNDY-1005', 'Lemon Drops', 'Sour lemon drop candies', 1.99, '/assets/images/products/Lemondrops.png' ,3),
	('HARD-CNDY-1006', 'Watermelon Candy', 'Hard watermelon flavored candy', 1.99, '/assets/images/products/WatermelonCandies.png' ,3),
	('HARD-CNDY-1007', 'Strawberry Candy', 'Individually wrapped strawberry hard candies', 1.99, '/assets/images/products/StrawberryCandies.png' ,3),
	('HARD-CNDY-1008', 'Root Beer Candy', 'Individually wrapped root beer hard candies', 1.99, '/assets/images/products/RootBeerCandies.png' ,3),
	('HARD-CNDY-1009', 'Mints', 'Individually wrapped peppermint candy', 1.99, '/assets/images/products/Mints.png' ,3),
	('HARD-CNDY-1010', 'Tarty Tarts', 'Tarty hard candy', 1.99, '/assets/images/products/TartyTarts.png' ,3),
	('HARD-CNDY-1011', 'Chocolate Mints', 'Individually wrapped chocolate mints', 1.99, '/assets/images/products/ChocolateMints.png' ,3),
	
	('LOLLI-POP-1000', 'Giant Lollipops','Colorful swirls of fun in all flavors! ', 2.50,'/assets/images/products/GiantLollipops.png',4),
		('LOLLI-POP-1001', 'Bubblegum Pops', 'Is it a lollipop? Is it bubblegum? Who knows!?',2.50, '/assets/images/products/BubblegumLollipop.png' ,4),
		('LOLLI-POP-1002', 'Chocolate Center Pops', 'Fruit flavored lollipops with chewy chocolate center',2.50, '/assets/images/products/ChocolateCenterLollipops.png' ,4),
		('LOLLI-POP-1003', 'Unicorn Pops', 'A lollipop that looks like a unicorn horn!', 2.50, '/assets/images/products/UnicornLollipops.png' ,4),
		('LOLLI-POP-1004', 'Sweet & Sour Pops', 'A lollipop that is sweet and sour.', 2.50, '/assets/images/products/SourLollipops.png' ,4),
		('LOLLI-POP-1005', 'Dum Dums', 'Any dum-dum knows these dum dums are super tasty!', 2.50, '/assets/images/products/DumDums.png' ,4),
		('LOLLI-POP-1006', 'Penguin Pops', 'Lollipops shaped like penguins!',2.50, '/assets/images/products/PenguinPops.png' ,4),
		('LOLLI-POP-1007', 'Ice Cream Lollies', 'Lollipops shaped like ice cream.',2.50, '/assets/images/products/IceCreamLollipops.png' ,4),
		('LOLLI-POP-1008', 'Smiley Face Pops', 'You will be happy after tasting this smiley face lollipop!',1.50, '/assets/images/products/SmileyFaceLollipops.png' ,4),
	
		--start at gummies next time--
		
	('GUMMY-CNDY-1000', 'Gummy Worms' , 'Deliciously disgusting gummy worms!' ,2.99, '/assets/images/products/GummyWorms.png' ,5),
	('GUMMY-CNDY-1001', 'Sour Gummy Worms', 'Mouth puckering sour gummy worms.',2.99, '/assets/images/products/SourGummyWorms.png' ,5),
	('GUMMY-CNDY-1002', 'Gummy Bears', 'The cutest gummies there are!', 2.99, '/assets/images/products/GummyBears.png' ,5),
	('GUMMY-CNDY-1003', 'Sour Gummy Bears', 'These sweet bears will make you pucker!',2.99 , '/assets/images/products/SourGummyBears.png' ,5),
	('GUMMY-CNDY-1004', 'Swedish Fish', 'Yummy gummy fish!' , 2.99, '/assets/images/products/GummyFish.png' , 5),
	('GUMMY-CNDY-1005', 'Sour Swedish Fish', 'Swedish fish -- but sour!',2.99, '/assets/images/products/SourGummyFish.png' ,5),
	('GUMMY-CNDY-1006', 'Fruit Chews', 'Fruit shaped gummies', 2.99, '/assets/images/products/GummyFruit.png' ,5),
	('GUMMY-CNDY-1007', 'Strawberry Gummies', 'Strawberry flavored chews shaped like strawberries.',2.99, '/assets/images/products/GummyStrawberries.png',5),
	('GUMMY-CNDY-1008', 'Spider Gummies', 'Your favorite snack just got creepier!', 2.99, '/assets/images/products/GummySpiders.png' ,5),
	('GUMMY-CNDY-1009', 'Horse Gummies', 'Gummies shaped like horses.',2.99, '/assets/images/products/GummyHorses.png' ,5),
	
	('BUB-GUM-1000', 'Gumballs','Bubble chewing fun!', .50,'/assets/images/products/Gumballs',6),
	('BUB-GUM-1001', 'Sour Gumballs', 'Can you handle this sour gum?',.50, '/assets/images/products/SourGumballs.png' ,6),
	('BUB-GUM-1002', 'Smiley Gumballs', 'A happy piece of gum', .50, '/assets/images/products/SmileyFaceBubbleGum.png' ,6),
	('BUB-GUM-1003', 'Bubblegum Squares', 'Colorful square shaped bubble gum.',.50, '/assets/images/products/BubblegumSquares.png' ,6),
	('BUB-GUM-1004', 'Rainbow Bubblegum', 'Fun, rainbow colored bubblegun', .50, '/assets/images/products/RainbowBubbleGum.png' ,6),
	('BUB-GUM-1005',  'Perfectly Pink Bubblegum', 'Pink strawberry, watermelon, and cherry flavored Bubblegum.', .50, '/assets/images/products/PerfectlyPinkBubbleGum.png' ,6),
	('BUB-GUM-1006', 'Pop Rock Bubblegum', 'Bubble gum pop rocks.', .75, '/assets/images/products/BubblegumPoprocks.png' ,6),
	('BUB-GUM-1007', 'Grape Gumballs', 'Grape flavored purple gumballs.', .50, '/assets/images/products/GrapeGumballs.png' ,6),
	('BUB-GUM-1008', 'Blueberry Gumballs', 'Blueberry flavored blue gumballs.',.50, '/assets/images/products/BlueberryGumballs.png' ,6),
	('BUB-GUM-1009', 'Watermelon Gumballs', 'Green watermelon flavored gumballs.', .50, '/assets/images/products/WatermelonGumballs.png' ,6),
	
	
	('CUP-CAKES-1000', 'Raspberry Cupcakes', 'Delectable raspberry cupcakes', 3.99,'/assets/images/products/Cupcakes.png' ,7),
	('CUP-CAKES-1001', 'Devils Food Cupcakes', 'Sumptuos devils food cake flavored cupcakes.', 3.99, '/assets/images/products/DevilsFoodCupcakes.png' ,7),
	('CUP-CAKES-1002', 'Lemon Cupcakes', 'Zesty, sweet lemon cupcakes.', 3.99, '/assets/images/products/LemonCupcakes.png' ,7),
	('CUP-CAKES-1003', 'Strawberry Cupcakes', 'Cute strawberry cupcakes.', 3.99, '/assets/images/products/StrawberryCupcakes.png' ,7),
	('CUP-CAKES-1004', 'Blueberry Lemon Cupcakes', 'Tasty blueberry lemon cupcakes', 3.99, '/assets/images/products/BlueberryLemonCupcakes.png' ,7),
	('CUP-CAKES-1005', 'Funfetti Cupcakes', 'Colorful funfetti cupcakes are perfect for a party!', 3.99, '/assets/images/products/FunfettiCupcakes.png' ,7),
	('CUP-CAKES-1006', 'Smore Cupcakes', 'You will want some more  of these smore cupcakes!', 3.99, '/assets/images/products/SmoreCupcakes.png' ,7),
	('CUP-CAKES-1007', 'Almond Vanilla Cupcakes', 'Classic vanilla cupcakes with almonds.', 3.99, '/assets/images/products/AlmondVanillaCupcakes.png' ,7),
	('CUP-CAKES-1008', 'Oreo Cupcakes', 'Cookies and cream cupcakes with oreos.', 3.99, '/assets/images/products/OreoCupcakes.png' ,7),
	('CUP-CAKES-1009', 'Pumpkin Cupcakes', 'Pumpkin flavored cupcakes.',3.99, '/assets/images/products/PumpkinCupcakes.png' ,7),
	
	
	('COOKIES-1000', 'Chocolate Chip Cookies', 'Just like homemade!', 3.99,'/assets/images/products/ChocolateChipCookies.png',8),
	('COOKIES-1000', 'Sugar Cookies', 'Colorfully frosted sugar cookies to satisfy your sweet tooth!', 3.50, '/assets/images/products/SugarCookies.png' ,8),
	('COOKIES-1000', 'Snickerdoodles', 'Flavorful snickerdoodle cookies.', 3.50, '/assets/images/products/Snickerdoodles.png' ,8),
	('COOKIES-1000', 'Pumpkin Cookies', 'Pumpkin perfect cookies.', 3.50, '/assets/images/products/PumpkinCookies.png' ,8),
	('COOKIES-1000', 'Sprinkle Cookies', 'Colorful cookies loaded with sprinkles.', 3.50, '/assets/images/products/SprinkleCookies.png' ,8),
	('COOKIES-1000', 'Lemon Cookies', 'Lemon flavored cookies.', 3.50, '/assets/images/products/LemonCookies.png' ,8),
	('COOKIES-1000', 'White Chocolate Macademia Nut Cookies', 'Cookies with white chocolate and macademia nuts.',3.50, '/assets/images/products/WhiteChocolateMacademiaCookies.png', 8),
	('COOKIES-1000', 'Peanut Butter Cookies', 'Classic peanut butter flavored cookies.', 3.50, '/assets/images/products/PeanutButterCookies.png' , 8),
	('COOKIES-1000', 'Strawberry Thumbprint', 'Cookies with strawberry filling.', 3.50, '/assets/images/products/StrawberryThumbprintCookies.png' ,8),
	('COOKIES-1000', 'Tripple Chocolate Cookies', 'Mega chocolatey cookies.', 3.950, '/assets/images/products/TrippleChocolateCookies.png' ,8),
	('COOKIES-1000', 'Salted Caramel Cookies', 'Chocolate chip cookies with salter caramel', 3.50, '/assets/images/products/SaltedCaramelCookies.png', 8);
	
	
	
	
SELECT * FROM products;
			
CREATE TABLE users(
user_id serial PRIMARY KEY,
user_name varchar(255)
);