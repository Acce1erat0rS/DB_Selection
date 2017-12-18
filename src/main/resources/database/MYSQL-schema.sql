CREATE TABLE IF NOT EXISTS t_user (user_id integer primary key AUTO_INCREMENT, user_birth date NOT NULL, created_at TIMESTAMP NOT NULL, user_email varchar(64) NOT NULL, user_name varchar(255) NOT NULL, user_password varchar(255) NOT NULL, updated_at TIMESTAMP NOT NULL, VERSION integer NOT NULL);
ALTER TABLE t_user ADD CONSTRAINT uk_user_email UNIQUE (user_email);
