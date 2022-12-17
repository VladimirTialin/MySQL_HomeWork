CREATE DATABASE HomeWork2;
USE HomeWork2;

CREATE TABLE Sales (
  idProduct int PRIMARY KEY AUTO_INCREMENT,
  ProductName varchar(30) NOT NULL,
  ProductCount varchar(30) NOT NULL,
  ProductPrice float NOT NULL
  );
  
  INSERT Sales (ProductName, ProductCount, ProductPrice)
  VALUES
  ("Телевизоры", 85, 35999.99),
  ("Холодильники", 751, 56876.87),
  ("Телефоны", 1010, 47145.00),
  ("Стиральные машины", 310, 78654.15),
  ("Кофемашины", 299, 35145.00),
  ("Пылесосы", 154, 19990.00),
  ("Системные блоки", 78, 10000.15),
  ("Газовые плиты", 101, 25461.45),
  ("Электические плиты", 325, 31211.1),
  ("Кондиционеры", 25, 76944.00),
  ("Утюги", 56, 4514.00),
  ("Электрочайники", 201, 3000.00),
  ("Аккустические системы", 15, 45000.00),
  ("Фены", 300, 4512.15);
  
  SELECT ProductName, ProductCount,
  IF (ProductCount < 100, "товара < 100",
  IF (ProductCount > 300, "товара > 300", "товара > 100 < 300"))
  AS GroupSales
  FROM Sales
  ORDER BY GroupSales ASC;
  
  CREATE TABLE Orders (
  idOrders int PRIMARY KEY AUTO_INCREMENT,
  OrdersName varchar(50) NOT NULL,
  OrdersPrice int NOT NULL,
  dataOrder date NOT NULL,
  Recipient varchar (30) NOT NULL,
  statusOrders tinyint);
  
  INSERT Orders (OrdersName, OrdersPrice, dataOrder, Recipient, statusOrders)
  VALUES
  ("Samsung Galaxy S22", 76000, '2022-01-21', "И.В. Петров", 1),
  ("Samsung Galaxy S21+", 58000, '2022-05-15', "А.А. Андреев", 0),
  ("Samsung Galaxy S20", 51000, '2022-05-18', "М.М. Миронов", 1),
  ("Apple Iphone 13", 56140, '2022-06-01', "И.В. Сергеева", 1),
  ("Apple Iphone 14", 59000, '2022-06-15', "Н.А. Иванов", 0),
  ("Apple Iphone 13 Pro", 79000, '2022-06-19', "С.В. Шишкин", -1),
  ("Apple Iphone 14 Pro", 91000, '2022-07-20', "А.А. Сидоров", 1),
  ("Xiaomi Redmi A9 ", 6700, '2022-07-21', "В.В. Прохоров", -1),
  ("Xiaomi POCO M4 PRO", 18491, '2022-07-21', "Ф.В. Петров", 1),
  ("HONOR X8", 16900, '2022-08-07', "Ж.В. Ус", 1),
  ("Samsung Galaxy A53", 22229, '2022-08-10', "И.В. Петров", 0),
  ("TECNO Camon 19 Pro", 14929, '2022-11-12', "С.С. Петрова", -1);
  
SELECT *,
CASE
	WHEN  StatusOrders = -1
		THEN "на складе"
	WHEN  StatusOrders = 0
		THEN "в пути"
	WHEN  StatusOrders = 1
		THEN "исполнен"
END AS execution
FROM Orders;

/*
NULL используется для обозначения того, что поле не имеет значения.
0 — это целое число, которое может быть задано,либо является результатом вычисления
*/