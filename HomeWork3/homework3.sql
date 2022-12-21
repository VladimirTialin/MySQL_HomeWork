CREATE DATABASE homework3;
USE homework3;
# Задание №1 
  CREATE TABLE Orders (
  idOrders int PRIMARY KEY AUTO_INCREMENT,
  ordersName varchar(50) NOT NULL,
  ordersPrice int NOT NULL,
  dataOrder date NOT NULL,
  recipient varchar (30) NOT NULL,
  city varchar (40)
  );
  
  INSERT Orders (ordersName, ordersPrice, dataOrder, city, recipient)
  VALUES
  ("Samsung Galaxy S22", 76000, '2016-01-21', "Москва","Геннадий Иванович Петров"),
  ("Samsung Galaxy S21+", 58000, '2016-01-01', "Краснодар", "Артем Артемович Андреев"),
  ("Samsung Galaxy S20", 51000, '2016-01-16', "Москва", "Михаил Михаилович Миронов"),
  ("Apple Iphone 13", 56140, '2016-01-01', "Краснодар", "Ирина Викторовна Сергеева"),
  ("Apple Iphone 14", 59000, '2016-01-15', "Москва", "Геннадий Иванович Петров"),
  ("Apple Iphone 13 Pro", 79000, '2016-01-14', NULL, "Артем Артемович Андреев"),
  ("Apple Iphone 14 Pro", 91000, '2016-01-08', "Санкт-Петербург", "Глеб Петрович Сидоров"),
  ("Xiaomi Redmi A9 ", 6700, '2016-01-01', "Уфа", "Николай Андреевич Иванов"),
  ("Xiaomi POCO M4 PRO", 18491, '2016-01-21', "Москва", "Иван Васильевич Петров"),
  ("HONOR X8", 16900, '2016-02-07', "Санкт-Петербург", "Жора Вартанович Ус"),
  ("Samsung Galaxy A53", 22229, '2016-01-10', NULL, "Геннадий Иванович Петров"),
  ("TECNO Camon 19 Pro", 14929, '2016-01-01', "Воронеж", "Светлана Сергеевна Петрова");

# 1. Напишите запрос, который сосчитал бы все суммы заказов, выполненных 1 января 2016 года.
SELECT dataOrder, SUM(ordersPrice) as sumSales
FROM Orders
WHERE dataOrder = '2016-01-01';

# 2. Напишите запрос, который сосчитал бы число различных, отличных от NULL значений поля city в таблице заказчиков.
SELECT COUNT(DISTINCT city) as nnull
FROM Orders;

# 3. Напишите запрос, который выбрал бы наименьшую сумму для каждого заказчика.
SELECT MIN(ordersPrice) as min,recipient
FROM Orders
GROUP BY recipient;

# 4*. Напишите запрос, который бы выбирал заказчиков чьи имена начинаются с буквы Г. Используется оператор "LIKE"
SELECT recipient
FROM Orders
WHERE recipient LIKE 'Г%'
ORDER BY recipient;

# 5. Напишите запрос, который выбрал бы высший рейтинг в каждом городе.
SELECT city, COUNT(city) AS rating
FROM Orders
GROUP BY city
HAVING rating > 0;
 # Задание №2
CREATE TABLE Staff (
  id int PRIMARY KEY AUTO_INCREMENT,
  useName varchar(35) NOT NULL,
  surName varchar(35) NOT NULL,
  specialty varchar(35) NOT NULL,
  seniority int NOT NULL,
  salary int  NOT NULL,
  age int NOT NUll
  );
  
  INSERT Staff (useName, surName, specialty, seniority, salary, age)
  VALUES
  ("Вася","Васькин","начальник",40,100000,60),
  ("Петя","Петькин","начальник",8,70000,30),
  ("Катя","Каткина","инженер",2,70000,25),
  ("Саша","Сашкин","инженер",12,50000,35),
  ("Иван","Иванов","рабочий",40,30000,59),
  ("Петр","Петров","рабочий",20,25000,40),
  ("Сидор","Сидоров","рабочий",10,20000,35),
  ("Антон","Антонов","рабочий",8,19000,28),
  ("Юра","Юркин","рабочий",5,15000,25),
  ("Максим","Воронин","рабочий",2,11000,22),
  ("Юра","Галкин","рабочий",3,12000,24),
  ("Люся","Люськина","уборщик",10,10000,49);
# 1. Сортировка зарплаты:
# по возрастанию
  SELECT * FROM Staff
  ORDER BY salary ASC;
# по убыванию
  SELECT * FROM Staff
  ORDER BY salary DESC;
  
# 2. Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк с наибольшей заработной платой
SELECT id, useName, surName, specialty, salary
FROM Staff
ORDER BY salary DESC
LIMIT 5;
# 3. Выполните группировку всех сотрудников по специальности “рабочий”, зарплата которых превышает 20000
SELECT useName, surName, specialty, salary
FROM Staff
WHERE specialty= "рабочий" 
AND salary >= 20000;

# Задания со слайда 3,4,5,6
# 3. Посчитать суммарную зарплату по каждой специальности 
SELECT specialty, SUM(salary) AS sum
FROM Staff
GROUP BY specialty;
# 4. Найти количество сотрудников 
SELECT  ROW_NUMBER()
OVER (ORDER BY specialty) AS id,
useName, surName, specialty, age
FROM Staff
WHERE specialty= "рабочий"
AND (age > 23 AND age < 43);
# 5. Найти количество специальностей
SELECT specialty, COUNT(specialty) AS count
FROM Staff
GROUP BY specialty;
# 6. Вывести специальности, у которых средний возраст сотрудника меньше 44 лет
SELECT specialty, AVG(age) AS avgAge
FROM Staff
GROUP BY specialty
HAVING AVG(age) < 44;