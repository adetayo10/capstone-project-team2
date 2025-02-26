-- Create the view named "WeatherView"
CREATE OR REPLACE VIEW "WeatherView" AS 

SELECT c."name", cn."countryCode", w."description", w."temp", w."feelsLike", w."humidity", w."pressure", w."sunrise",
w."sunset", w."updatedOn"
FROM "Weather" w 
JOIN "City" c ON w."cityId" = c."cityId"
JOIN "Country" cn ON c."countryId"= cn."countryId";



-- Select all columns from the "WeatherView" view
SELECT * FROM "WeatherView";
