CREATE TABLE "User"(
"userId" integer not null GENERATED ALWAYS AS IDENTITY,
"firstName" varchar not null,
"lastName" varchar not null,
"username" varchar not null,
"phone" varchar not null,
"emailId" varchar not null,
"password" varchar not null,
"emailVerified" boolean not null,
"createdOn" timestamp without time zone not null,
constraint "User_pkey" primary key ("userId"),
constraint "User_emailId_key" unique ("emailId"),
constraint "User_username_key" unique ("username")
);


-- Insert a new row into the "User" table
insert into "User" ("firstName", "lastName", "username", "phone", "emailId", "password", "emailVerified", "createdOn")
values('John','Doe','johndoe','+1-555-1234','ohndoe@example.com','password123',true,CURRENT_TIMESTAMP);


-- Insert multiple users with a single query using a VALUES list
insert into "User" ("firstName", "lastName", "username", "phone", "emailId", "password", "emailVerified", "createdOn")
values ('Amy', 'Lee', 'amylee', '+1-555-9012', 'amylee@example.com', 'password789', true, NOW()),
('Tom', 'Jones', 'tomjones', '+1-555-3456', 'tomjones@example.com', 'passwordabc', false, NOW());

-- Select all rows from the "User" table
select * from "User"

-- Select all rows from the "User" table where the value of the "emailVerified" column is true.
select * from "User" where "emailVerified" = true;

-- Select all rows from the "User" table where the value of the "userId" column is 1.
select * from "User" where "userId" = 1;

-- Select all rows from the "User" table where the value of the "emailId" column is 'johndoe@example.com'.
select * from "User" where "emailId" = 'johndoe@example.com';

-- Please use the file upload feature of this IDE to upload screenshots.


--insert 5 new records into User table
insert into "User" ("firstName", "lastName", "username", "phone", "emailId", "password", "emailVerified", "createdOn")
values ('John', 'Doe1', 'johndoe1', '1234567890', 'johndoe1@example.com', 'password1', true, now()),
('Jane', 'Doe', 'janedoe', '2345678901', 'janedoe@example.com', 'password2', true, now()),
('Bob', 'Smith', 'bobsmith', '3456789012', 'bobsmith@example.com', 'password3', true, now()),
('Alice', 'Johnson', 'alicejohnson', '4567890123', 'alicejohnson@example.com', 'password4', true, now()),
('Mike', 'Brown', 'mikebrown', '5678901234', 'mikebrown@example.com', 'password5', true, now());

--select all users whose first name starts with the letter 'J'.
select * from "User" where "firstName" like 'J%';

--maximum and minimum values of the "userId" column in the "User" table.
select max("userId") AS "Max", min("userId") AS "Min" from "User";

--count the number of users in the table whose email addresses end with '@example.com'.
select count(*) as "Counts" from "User" where "emailId" like '@example.com%';

--retrieve user records from the "User" table where the last name is either 'Doe' or 'Johnson'.
select * from "User" where "lastName" in ('Doe', 'Johnson');

-- retrieve all distinct phone numbers from the "User" table.
select distinct "phone" from "User";



-- retrieve all users from the User table in ascending order based on their last names.
 select * from "User" order by "lastName" ASC;

-- retrieve all users from the User table in descending order based on their first names.
 select * from "User" order by "firstName" DESC;

--retrieve the top 5 users from the User table with the latest "createdOn" dates, sorted in descending order.
 select * from "User" order by "createdOn" DESC LIMIT 5;

--retrieve all users from the User table whose last names start with the letter "S", 
--sorted in descending order based on their "createdOn" date.
 select * from "User" where "lastName" like 'S%' order by "createdOn" DESC;

--retrieve all users from the User table whose password length is greater than 8 characters, 
--sorted in ascending order based on their "createdOn" date.
 select * from "User" where LENGTH (password) > 8 order by "createdOn" ASC;