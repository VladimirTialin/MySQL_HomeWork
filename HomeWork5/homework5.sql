CREATE DATABASE homework5;
USE homework5;
CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT *
FROM cars;
#  Создайте представление, в которое попадут автомобили стоимостью  до 25 000 долларов
CREATE VIEW newcars AS
SELECT id, name, cost
AS VALUE FROM cars
WHERE cost <=25000;
SELECT * FROM newcars;
# Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW) 
ALTER VIEW newcars AS
SELECT id, name, cost
FROM cars
WHERE cost <=30000;
SELECT * FROM newcars;
# Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
CREATE VIEW namecars AS
SELECT name, cost
FROM cars
WHERE name IN ("Audi","Skoda");
SELECT * FROM namecars;

# Расчитать время между станциями
CREATE TABLE trainSchedule
(
train_id INT,
station VARCHAR(20),
station_time time
);
 INSERT trainSchedule
 VALUES
 (110, "San Francisco", '10:00:00'),
 (110, "Redwood City", '10:54:00'),
 (110, "Palo Alto", '11:02:00'),
 (110, "San Jose", '12:35:00'),
 (120, "San Francisco", '11:00:00'),
 (120, "Palo Alto", '12:49:00'),
 (120, "San Jose", '13:30:00');
SELECT * FROM trainSchedule;

SELECT train_id, station, station_time, TIMEDIFF(LEAD (station_time)
OVER (PARTITION BY train_id), station_time)
AS 'time_to_next_station' FROM trainSchedule;
