-- STEP1: To get the list of Cities

SELECT * 
FROM city_list
WHERE country LIKE 'United States' 

--STEP2: Both Global and City data has a column named 'avg_temp' in common. SO, I have altered table to rename the columns accordingly

ALTER TABLE city_data RENAME COLUMN avg_temp to avg_temp_city;
ALTER TABLE global_data RENAME COLUMN avg_temp to avg_temp_global;

--STEP3: Joining Global and City tables and extarcting the temperatures

SELECT global_data.year, global_data.avg_temp_global, city_data.avg_temp_city
FROM global_Data JOIN city_data
ON global_data.year = city_data.year
WHERE city like 'Columbus'
