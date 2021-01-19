CREATE TABLE user_username(
    username_id SERIAL PRIMARY KEY,
    username VARCHAR(255)
);

CREATE TABLE user_hash(
    hash_id SERIAL PRIMARY KEY,
    username_id INT REFERENCES user_username(username_id),
    hash VARCHAR(2000)  
);

CREATE TABLE user_info (
    user_info_id SERIAL PRIMARY KEY,
    username_id INT REFERENCES user_username(username_id),
    name VARCHAR (50),
    email VARCHAR (255)

);