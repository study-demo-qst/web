CREATE TABLE USER (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);
INSERT INTO USER (username, password, email) VALUES ('user1', 'password1', 'user1@example.com');
INSERT INTO USER (username, password, email) VALUES ('user2', 'password2', 'user2@example.com');
INSERT INTO USER (username, password, email) VALUES ('user3', 'password3', 'user3@example.com');
