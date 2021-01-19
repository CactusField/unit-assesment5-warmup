INSERT into user_hash(username_id, hash)
VALUES ($1, $2);



SELECT * FROM user_username uu
JOIN user_info ui USING (username.id)
WHERE uu.username_id = $1
