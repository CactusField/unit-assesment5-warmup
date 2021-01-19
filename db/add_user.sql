INSERT INTO userusername(username)
VALUES($1)

RETURNING username_id;