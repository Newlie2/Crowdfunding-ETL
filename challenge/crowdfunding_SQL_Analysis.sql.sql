-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 

SELECT backers.cf_id, COUNT(backers.backer_id) AS backer_count
FROM backers
INNER JOIN campaign
ON backers.cf_id = campaign.cf_id
GROUP BY backers.cf_id
ORDER BY backer_count DESC;



-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.

SELECT * FROM backers;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 


CREATE TABLE email_contacts_remaining_goal_amount AS 
SELECT c.first_name, c.last_name, c.email
FROM backers 
ORDER BY amount_left DESC;

-- Check the table


-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 



-- Check the table


