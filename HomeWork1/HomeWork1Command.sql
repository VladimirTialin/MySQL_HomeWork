# Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT manufacturer, model, price
phomephomephomephome
FROM phone
WHERE manufacturer IN (
        SELECT manufacturer
        FROM phone
        GROUP BY manufacturer
        HAVING COUNT(manufacturer) > 2
      );

# Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM phone
WHERE manufacturer='Samsung';