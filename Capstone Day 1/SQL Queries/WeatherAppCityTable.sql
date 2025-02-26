CREATE TABLE "City"(
"cityId" integer not null GENERATED ALWAYS AS IDENTITY,
"name" varchar not null,
"weatherCityId" integer not null,
"countryId" integer not null,
"timezone" varchar not null,
"latitude" numeric not null,
"longitude" numeric not null,
constraint "City_pkey" primary key ("cityId"),
constraint "City_countryId_fkey" foreign key ("countryId")
references "Country"("countryId")
);

--insert a new city record into the table
insert into "City" ("name", "weatherCityId", "countryId", "timezone", "latitude", "longitude")
values ('London', 12345, 1, 'GMT', 51.5074, -0.1278);

--select all the records from City table
select * from "City";

--Select all records for the city with a "cityId" of 1.
select * from "City" where "cityId" = 1; 

--Update the "timezone" for the city with a "cityId" of 1 to "BST"
update "City" set "timezone" = 'BST' where "cityId" = 1;

--insert another new city record into the table
insert into "City" ("name", "weatherCityId", "countryId", "timezone", "latitude", "longitude")
values ('Paris', 54321, 2, 'CET', 48.8566, 2.3522);

--Select all cities with a "countryId" of 2.
select * from "City" where "countryId" = 2;

--Update the "timezone" for all cities in the table to "UTC".
update "City" set "timezone" = 'UTC';
