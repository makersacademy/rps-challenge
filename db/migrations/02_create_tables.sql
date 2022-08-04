CREATE TABLE scores (id SERIAL PRIMARY KEY, won INT, drew INT, lost INT);
INSERT INTO scores (won, drew, lost) VALUES(0, 0, 0);


-- CREATE TABLE users (id SERIAL PRIMARY KEY, username VARCHAR(30));

-- CREATE TABLE spaces (id SERIAL PRIMARY KEY, name_of_space VARCHAR(100), available BOOLEAN, user_id INT, description VARCHAR(240), price_per_night INT);