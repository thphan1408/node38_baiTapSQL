# Tạo database
CREATE DATABASE NODE38_FOODS

# TABLE USERS

CREATE TABLE USERS(
	USER_ID INT PRIMARY KEY AUTO_INCREMENT,
	FULL_NAME VARCHAR(100),
	EMAIL VARCHAR(255),
	PASS_WORD VARCHAR(255)
)

INSERT INTO USERS (FULL_NAME, EMAIL, PASS_WORD)
VALUES
    ('John Doe', 'john.doe@example.com', 'password123'),
    ('Jane Smith', 'jane.smith@example.com', 'securepass'),
    ('Bob Johnson', 'bob.johnson@example.com', 'userpass'),
    ('Alice Williams', 'alice.williams@example.com', 'mypassword'),
    ('Charlie Brown', 'charlie.brown@example.com', 'brown123'),
    ('David Miller', 'david.miller@example.com', 'davidpass'),
    ('Emily Davis', 'emily.davis@example.com', 'emily123'),
    ('Frank Wilson', 'frank.wilson@example.com', 'password456'),
    ('Grace Taylor', 'grace.taylor@example.com', 'gracepass'),
    ('Henry Turner', 'henry.turner@example.com', 'password789'),
    ('Ivy Lee', 'ivy.lee@example.com', 'ivypassword'),
    ('Jack Robinson', 'jack.robinson@example.com', 'jackpass'),
    ('Katie Moore', 'katie.moore@example.com', 'katiepass'),
    ('Leo Harris', 'leo.harris@example.com', 'leopassword'),
    ('Mia Thompson', 'mia.thompson@example.com', 'miapass'),
    ('Nathan Clark', 'nathan.clark@example.com', 'nathanpass'),
    ('Olivia White', 'olivia.white@example.com', 'oliviapass'),
    ('Peter Davis', 'peter.davis@example.com', 'peterpass'),
    ('Quincy Turner', 'quincy.turner@example.com', 'quincypass'),
    ('Rachel Miller', 'rachel.miller@example.com', 'rachelpass');

# TẠO TABLE RESTAURANT

CREATE TABLE RESTAURANT(
	RES_ID INT PRIMARY KEY AUTO_INCREMENT,
	RES_NAME VARCHAR(255),
	IMAGE VARCHAR(255),
	DECS VARCHAR(255)
)

INSERT INTO RESTAURANT (RES_NAME, IMAGE, DECS) VALUES
('Cafe Bella', 'cafe_bella.jpg', 'A cozy cafe with a variety of coffee options.'),
('Pizza Palace', 'pizza_palace.jpg', 'Home of the best pizza in town!'),
('Sushi Haven', 'sushi_haven.jpg', 'Fresh and delicious sushi dishes.'),
('Burger Bistro', 'burger_bistro.jpg', 'Gourmet burgers and fries.'),
('Thai Spice', 'thai_spice.jpg', 'Authentic Thai cuisine with a touch of spice.'),
('Mediterranean Delight', 'mediterranean_delight.jpg', 'Experience the flavors of the Mediterranean.'),
('Taco Fiesta', 'taco_fiesta.jpg', 'Taste the excitement of Mexican street food.'),
('Vegetarian Oasis', 'vegetarian_oasis.jpg', 'A haven for vegetarian and vegan delights.'),
('Steakhouse Supreme', 'steakhouse_supreme.jpg', 'Premium steaks cooked to perfection.'),
('Seafood Harbor', 'seafood_harbor.jpg', 'Fresh seafood served with a view.'),
('Pasta Paradise', 'pasta_paradise.jpg', 'Indulge in a variety of pasta dishes.'),
('Deli Delight', 'deli_delight.jpg', 'Classic deli sandwiches and salads.'),
('Indian Spice', 'indian_spice.jpg', 'Savor the rich flavors of Indian cuisine.'),
('Smoothie Spot', 'smoothie_spot.jpg', 'Refreshing smoothies and healthy snacks.'),
('BBQ Barn', 'bbq_barn.jpg', 'BBQ favorites in a rustic setting.'),
('Noodle Nook', 'noodle_nook.jpg', 'A diverse selection of noodle dishes.'),
('Crepe Corner', 'crepe_corner.jpg', 'Sweet and savory crepes for every taste.'),
('Ice Cream Emporium', 'ice_cream_emporium.jpg', 'A paradise of ice cream flavors.'),
('Diner Daze', 'diner_daze.jpg', 'Classic American diner with comfort food.'),
('Pho Palace', 'pho_palace.jpg', 'Delicious Vietnamese pho and more.');

# TẠO TABLE TRUNG GIANG LIKE_RES

CREATE TABLE LIKE_RES(
	USER_ID INT,
	FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID),
	RES_ID INT,
	FOREIGN KEY (RES_ID) REFERENCES RESTAURANT(RES_ID),
	DATE_LIKE DATE
)

INSERT INTO LIKE_RES (USER_ID, RES_ID, DATE_LIKE)
VALUES
    (1, 1, '2023-01-15'),
    (2, 2, '2023-01-16'),
    (3, 3, '2023-01-17'),
    (4, 4, '2023-01-18'),
    (5, 5, '2023-01-19'),
    (6, 6, '2023-01-20'),
    (7, 7, '2023-01-21'),
    (8, 8, '2023-01-22'),
    (9, 9, '2023-01-23'),
    (10, 10, '2023-01-24'),
    (11, 11, '2023-01-25'),
    (12, 12, '2023-01-26'),
    (13, 13, '2023-01-27'),
    (14, 14, '2023-01-28'),
    (15, 15, '2023-01-29'),
    (16, 16, '2023-01-30'),
    (17, 17, '2023-01-31'),
    (18, 18, '2023-02-01'),
    (19, 19, '2023-02-02'),
    (20, 20, '2023-02-03');

# TẠO TABLE RATE_RES
CREATE TABLE RATE_RES(
	USER_ID INT,
	FOREIGN KEY(USER_ID) REFERENCES USERS(USER_ID),
	RES_ID INT,
	FOREIGN KEY(RES_ID) REFERENCES RESTAURANT(RES_ID),
	AMOUNT INT,
	DATE_RATE DATE
)

INSERT INTO RATE_RES (USER_ID,RES_ID, AMOUNT, DATE_RATE) VALUES
(1, 3, 4, '2023-01-15'),
(2, 1, 5, '2023-02-20'),
(3, 5, 3, '2023-03-10'),
(4, 8, 4, '2023-04-05'),
(5, 12, 5, '2023-05-12'),
(1, 15, 4, '2023-06-18'),
(2, 18, 3, '2023-07-22'),
(3, 20, 5, '2023-08-30'),
(4, 7, 4, '2023-09-02'),
(5, 10, 5, '2023-10-08'),
(1, 2, 3, '2023-11-15'),
(2, 4, 4, '2023-12-20'),
(3, 6, 5, '2024-01-25'),
(4, 9, 3, '2024-02-28'),
(5, 11, 4, '2024-03-05'),
(1, 13, 5, '2024-04-10'),
(2, 16, 3, '2024-05-15'),
(3, 19, 4, '2024-06-20'),
(4, 14, 5, '2024-07-25'),
(5, 17, 3, '2024-08-30');

CREATE TABLE FOOD(
	FOOD_ID INT PRIMARY KEY AUTO_INCREMENT,
	FOOD_NAME VARCHAR(255),
	IMAGE VARCHAR(255),
	PRICE FLOAT,
	DESCRIPTION VARCHAR(255),
	TYPE_ID INT,
	FOREIGN KEY(TYPE_ID) REFERENCES FOOD_TYPE(TYPE_ID)
)

INSERT INTO FOOD (FOOD_NAME, IMAGE, PRICE, DESCRIPTION, TYPE_ID)
VALUES
    ('Pho Bo', 'pho_bo.jpg', 7.99, 'Traditional Vietnamese beef noodle soup', 1),
    ('Pad Thai', 'pad_thai.jpg', 9.99, 'Stir-fried rice noodle dish with shrimp and tofu', 2),
    ('Margherita Pizza', 'margherita_pizza.jpg', 12.99, 'Classic pizza with tomato, mozzarella, and basil', 3),
    ('Sushi Roll', 'sushi_roll.jpg', 15.99, 'Assorted sushi rolls with fresh fish and rice', 4),
    ('Chicken Alfredo', 'chicken_alfredo.jpg', 11.99, 'Creamy pasta dish with chicken and Alfredo sauce', 5),
    ('Caesar Salad', 'caesar_salad.jpg', 8.99, 'Fresh salad with romaine lettuce, croutons, and Caesar dressing', 6),
    ('Hamburger', 'hamburger.jpg', 6.99, 'Classic beef patty with lettuce, tomato, and cheese', 7),
    ('Chicken Curry', 'chicken_curry.jpg', 10.99, 'Spicy chicken curry with rice', 8),
    ('Tacos', 'tacos.jpg', 7.99, 'Soft or hard shell tacos with seasoned meat, lettuce, and salsa', 9),
    ('Sushi Sashimi', 'sushi_sashimi.jpg', 18.99, 'Assorted sashimi slices with soy sauce', 4),
    ('Pasta Carbonara', 'pasta_carbonara.jpg', 13.99, 'Italian pasta dish with eggs, cheese, pancetta, and black pepper', 5),
    ('Chicken Teriyaki', 'chicken_teriyaki.jpg', 12.99, 'Grilled chicken with teriyaki sauce and steamed vegetables', 8),
    ('Shrimp Scampi', 'shrimp_scampi.jpg', 14.99, 'Garlic-infused shrimp with linguine pasta', 5),
    ('Vegetarian Stir-Fry', 'vegetarian_stir_fry.jpg', 9.99, 'Stir-fried vegetables with tofu in a savory sauce', 2),
    ('Margherita Flatbread', 'margherita_flatbread.jpg', 10.99, 'Flatbread with tomato, mozzarella, and basil', 3),
    ('Pho Ga', 'pho_ga.jpg', 8.99, 'Vietnamese chicken noodle soup', 1),
    ('Caprese Salad', 'caprese_salad.jpg', 10.99, 'Salad with fresh tomatoes, mozzarella, and basil', 6),
    ('Grilled Salmon', 'grilled_salmon.jpg', 16.99, 'Grilled salmon fillet with lemon and herbs', 10),
    ('Beef Burrito', 'beef_burrito.jpg', 11.99, 'Large flour tortilla filled with seasoned beef, beans, and rice', 9),
    ('Mango Sticky Rice', 'mango_sticky_rice.jpg', 6.99, 'Sweet Thai dessert with mango and sticky rice', 11);


CREATE TABLE FOOD_TYPE(
	TYPE_ID INT PRIMARY KEY AUTO_INCREMENT,
	TYPE_NAME VARCHAR(255)
)

INSERT INTO FOOD_TYPE (TYPE_NAME)
VALUES
    ('Vietnamese'),
    ('Thai'),
    ('Italian'),
    ('Japanese'),
    ('Pasta'),
    ('Salad'),
    ('Burger'),
    ('Curry'),
    ('Tacos'),
    ('Seafood'),
    ('Dessert'),
    ('Indian'),
    ('Chinese'),
    ('Pizza'),
    ('Sandwich'),
    ('Mexican'),
    ('Sushi'),
    ('Vegetarian'),
    ('Steak'),
    ('Breakfast');

CREATE TABLE ORDERS(
	USER_ID INT,
	FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID),
	FOOD_ID INT,
	FOREIGN KEY (FOOD_ID) REFERENCES FOOD(FOOD_ID),
	AMOUNT INT,
	CODE VARCHAR(100),
	ARR_SUB_ID VARCHAR(100)
)

INSERT INTO ORDERS (USER_ID, FOOD_ID, AMOUNT, CODE, ARR_SUB_ID)
VALUES
    (1, 21, 2, 'ORDER123', 'SUB123'),
    (2, 23, 1, 'ORDER456', 'SUB456'),
    (3, 25, 3, 'ORDER789', 'SUB789'),
    (4, 22, 2, 'ORDERABC', 'SUBABC'),
    (5, 28, 1, 'ORDERDEF', 'SUBDEF'),
    (6, 30, 2, 'ORDERGHI', 'SUBGHI'),
    (7, 35, 1, 'ORDERJKL', 'SUBJKL'),
    (8, 38, 3, 'ORDERMNO', 'SUBMNO'),
    (9, 32, 2, 'ORDERPQR', 'SUBPQR'),
    (10, 37, 1, 'ORDERSUV', 'SUBSUV'),
    (11, 40, 2, 'ORDERTUV', 'SUBTUV'),
    (12, 34, 3, 'ORDERXYZ', 'SUBXYZ'),
    (13, 33, 1, 'ORDER1234', 'SUB1234'),
    (14, 36, 2, 'ORDER5678', 'SUB5678'),
    (15, 39, 3, 'ORDER9012', 'SUB9012'),
    (16, 29, 1, 'ORDER3456', 'SUB3456'),
    (17, 31, 2, 'ORDER7890', 'SUB7890'),
    (18, 36, 1, 'ORDERABCD', 'SUBABCD'),
    (19, 34, 3, 'ORDEREFGH', 'SUBEFGH'),
    (20, 37, 2, 'ORDERIJKL', 'SUBIJKL');


CREATE TABLE SUB_FOOD(
	SUB_ID INT PRIMARY KEY AUTO_INCREMENT,
	SUB_NAME VARCHAR(200),
	SUB_PRICE FLOAT,
	FOOD_ID INT,
	FOREIGN KEY (FOOD_ID) REFERENCES FOOD(FOOD_ID)
)

INSERT INTO SUB_FOOD (SUB_NAME, SUB_PRICE, FOOD_ID)
VALUES
    ('Extra Beef', 2.50, 21),
    ('Spicy Level 2', 1.00, 22),
    ('Extra Cheese', 1.50, 23),
    ('Double Shrimp', 3.00, 24),
    ('Add Bacon', 2.00, 25),
    ('Avocado', 1.50, 26),
    ('Jalapenos', 0.75, 27),
    ('Extra Chicken', 2.00, 28),
    ('Guacamole', 1.50, 29),
    ('Sour Cream', 0.50, 30),
    ('Sashimi Combo', 5.00, 31),
    ('Alfredo Sauce', 1.50, 32),
    ('Tofu Option', 1.00, 33),
    ('Extra Tomato', 0.75, 34),
    ('Buffalo Sauce', 1.00, 35),
    ('Salmon Upgrade', 4.00, 36),
    ('Double Beef', 3.00, 37),
    ('Extra Spinach', 0.50, 38),
    ('Onion Rings', 2.00, 39),
    ('Egg Topping', 1.00, 40);

--------------------------------------------------------------------------------------------------
# BÀI TẬP TRUY XUẤT DỮ LIỆU:

-- CÂU 1: TÌM 5 NGƯỜI LIKE NHÀ HÀNG NHIỀU NHẤT

SELECT COUNT(USERS.USER_ID) AS 'NUMBER OF LIKES', USERS.FULL_NAME FROM LIKE_RES
INNER JOIN USERS ON LIKE_RES.USER_ID = USERS.USER_ID
GROUP BY USERS.FULL_NAME
ORDER BY COUNT(USERS.USER_ID) DESC
LIMIT 5

-- CÂU 2: TÌM 2 NHÀ CÓ LƯỢT LIKE NHIỀU NHẤT
SELECT COUNT(RESTAURANT.RES_ID) AS 'NUMBER OF LIKES', RESTAURANT.RES_NAME FROM LIKE_RES
INNER JOIN RESTAURANT ON LIKE_RES.RES_ID = RESTAURANT.RES_ID
GROUP BY RESTAURANT.RES_NAME
ORDER BY COUNT(RESTAURANT.RES_ID) DESC
LIMIT 2

-- CÂU 3: Tìm người đã đặt hàng nhiều nhất
SELECT USERS.USER_ID, USERS.FULL_NAME, MAX(ORDERS.AMOUNT) AS 'NUMBER OF ORDERS'
FROM USERS
LEFT JOIN ORDERS ON USERS.USER_ID = ORDERS.USER_ID
GROUP BY USERS.USER_ID, USERS.FULL_NAME
ORDER BY MAX(ORDERS.AMOUNT) DESC


-- CÂU 4: Tìm người dùng không hoạt động trong hệ thống (không đặt hàng, không like, không đánh giá nhà hàng)
SELECT USERS.USER_ID, USERS.FULL_NAME
FROM USERS
LEFT JOIN ORDERS ON USERS.USER_ID = ORDERS.USER_ID
LEFT JOIN LIKE_RES ON USERS.USER_ID = LIKE_RES.USER_ID
LEFT JOIN RATE_RES ON USERS.USER_ID = RATE_RES.USER_ID
WHERE ORDERS.USER_ID IS NULL AND LIKE_RES.USER_ID IS NULL AND RATE_RES.USER_ID IS NULL;

--------------------------------------------------------------------------------------------------


-- COUNT, MAX, MIN, AVG,... GROUP BY ĐI KÈM

-- LEFT JOIN
SELECT * FROM USERS
LEFT JOIN LIKE_RES ON LIKE_RES.USER_ID = USERS.USER_ID

-- 34 DATA
-- 20 DATA TRONG TABLE LIKE_RES
-- VÀ 14 DATA TRONG TABLE USERS



SELECT * FROM LIKE_RES
SELECT * FROM USERS
SELECT * FROM RESTAURANT
SELECT * FROM ORDERS

