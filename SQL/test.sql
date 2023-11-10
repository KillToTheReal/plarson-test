-------------------- Не вполне уверен что делаю то что от меня требуется, но если нам нельзя обратиться ни к существующей, 
-----ни к временной таблице, то остаётся генерировать её на лету

-------------------------------- Самый базовый подход

SELECT 'Январь' AS Месяц, 31 AS Дни
UNION ALL
SELECT 'Февраль', 
       CASE
         WHEN (YEAR(NOW()) % 4 = 0 AND YEAR(NOW()) % 100 <> 0) OR YEAR(NOW()) % 400 = 0
         THEN 29
         ELSE 28
       END AS Дни
UNION ALL
SELECT 'Март', 31 AS Дни
UNION ALL
SELECT 'Апрель', 30 AS Дни
UNION ALL
SELECT 'Май', 31 AS Дни
UNION ALL
SELECT 'Июнь', 30 AS Дни
UNION ALL
SELECT 'Июль', 31 AS Дни
UNION ALL
SELECT 'Август', 31 AS Дни
UNION ALL
SELECT 'Сентябрь', 30 AS Дни
UNION ALL
SELECT 'Октябрь', 31 AS Дни
UNION ALL
SELECT 'Ноябрь', 30 AS Дни
UNION ALL
SELECT 'Декабрь', 31 AS Дни;
