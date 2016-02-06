-- DROP TABLE IF EXISTS users CASCADE;
-- DROP TABLE IF EXISTS topics CASCADE;
-- DROP TABLE IF EXISTS comments CASCADE;

CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	login_name VARCHAR(200) UNIQUE NOT NULL,
	login_password VARCHAR(255) NOT NULL,
	fname VARCHAR(255),
	lname VARCHAR(255),
	image VARCHAR	
);

CREATE TABLE topics(
	id SERIAL PRIMARY KEY,
	titles VARCHAR(255) NOT NULL,
	topic_text VARCHAR NOT NULL, 
	user_id INTEGER REFERENCES users(id)
);

CREATE TABLE comments(
	id SERIAL PRIMARY KEY,
	topic_id INTEGER REFERENCES topics(id) NOT NULL,
	content TEXT NOT NULL,
	posted_at TIMESTAMP,
	user_id INTEGER REFERENCES users(id)
);

