CREATE TABLE "Country"(
"countryId" integer not null GENERATED ALWAYS AS IDENTITY, 
"countryCode" varchar not null,
constraint "Country_pkey" primary key ("countryId")
);

--Insert a new row into the "Country" table with a "countryCode" of 'CA'.
insert into "Country" ("countryCode")
values ('CA');

--Insert two new rows into the "Country" table with "countryCode" values of 'DE' and 'IT'.
insert into "Country" ("countryCode")
values ('DE'),
('IT')

--Select all rows from the "Country" table.
select * from "Country";

--Select the "countryCode" value for the row with "countryId" equal to 3.
select "countryCode" from "Country" where "countryId" = 3;

--Update the "countryCode" value to 'UK' for the row with "countryId" equal to 1.
update "Country" set "countryCode" ='UK' where "countryId" = 1; 

--Update the "countryCode" value to 'FR' for the row with "countryId" equal to 2.
update "Country" set "countryCode" ='FR' where "countryId" = 2; 

--Delete the row from the "Country" table with "countryId" equal to 3.
delete from "Country" where "countryId" = 3; 
