-- Build a single SQL query to achieve all of the following:
SELECT TO_CHAR(DATE_TRUNC('month', "createdOn"), 'YYYY-MM')AS "month", COUNT(*) AS "user_count" FROM "User" GROUP BY DATE_TRUNC('month', "createdOn") ORDER BY DATE_TRUNC('month', "createdOn") ASC;

-- Select the truncated month and the count of users from the User table
-- Truncate the createdOn timestamp to the month level and format it as "YYYY-MM"
-- Count the number of users for each truncated month
-- Group the users by the truncated month
-- Order the results by month in ascending order









-- Retrieve the first name, last name, phone number, and email ID of a user whose "userId" is  retrieved using subquery 

--The subquery retrieves the user's "userId" for the user with the "username"='johndoe',which is used to filter the results in the outer query.
 



-- Retrieves the first name, last name, username, phone number, and email ID of a user whose "userid" is retrieved using subquery   

-- This subquery is used to determine the maximum "userId" and then filters the results in the outer query using this value.
 