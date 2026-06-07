/*
=================================================
        Exercise 5 : advanced-functions
=================================================
*/

-- 1. CONCAT e LOWER
SELECT CONCAT(name, '.', lastname, '@ifpr.edu.br') AS email_institucional 
FROM employees; --joins the name and lastname with a dot separator + the email

-- 2. CHAR_LENGTH
SELECT user_id CHAR_LENGTH(user, password) AS password_total_char
FROM pendant_logins; /*gets all pendant logins and returns the total of characters in their password, 
special charaters count as 2, but here we use char_lengh, so it counts as 1 */

-- 3. SUBSTRING
SELECT releases, SUBSTRING(releases, 5, 7) AS machine_model
FROM corporation; /*gets the releases of a corporations, starts at character five, moves 7 
characters to the right and returns whats written on it here for example, RTX 4060 IT woulld return 4060 IT*/

-- 4. REPLACE
SELECT REPLACE(email, '@ifpr.com', '@ifpr.edu.br') AS updated_emails 
FROM students; --replaces, here, it replaces the old email (@ifpr.com) for (ifpr.edu.br) for example

-- 5. UPPER
SELECT UPPER(locations) AS locations_uppercase
FROM client_location; --turns all characters into uppercase regardless of what its written.
