SELECT * FROM user_username uu
JOIN user_password up USING(username_id)
WHERE uu.username_id = $1;