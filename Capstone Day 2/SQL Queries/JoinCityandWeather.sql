--Retrieve the names of all cities and their corresponding weather descriptions based on "cityId"
SELECT c."name",w."description" FROM "City" AS C JOIN "Weather" AS w ON c."cityId"=w."cityId";

--Retrieve the names of all cities and their corresponding temperatures based on "cityId"
SELECT c."name",w."temp" FROM "City" AS C JOIN "Weather" AS w ON c."cityId"=w."cityId";

--Retrieve the names and timezones of all cities where the humidity is greater than 50%.
SELECT c."name",c."timezone" FROM "City" AS C JOIN "Weather" AS w ON c."cityId"=w."cityId" WHERE w."humidity" > 50; 

--Retrieve the names and sunrise times of all cities where the temp is less than 20.
SELECT c."name",w."sunrise" FROM "City" AS C JOIN "Weather" AS w ON c."cityId"=w."cityId" WHERE w.temp < 20; 

--Retrieve the names and maximum temperatures of all cities where the wind speed is less than 10.
SELECT c."name",w."tempMax" FROM "City" AS C JOIN "Weather" AS w ON c."cityId"=w."cityId" WHERE w."windSpeed" < 10; 




