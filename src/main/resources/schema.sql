CREATE TABLE USER (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE CreditCardDetails (
    cardNumber VARCHAR(20) NOT NULL,
    expirationDate VARCHAR(5) NOT NULL,
    cvv VARCHAR(4) NOT NULL,
    cardType VARCHAR(10) NOT NULL,
    PRIMARY KEY (cardNumber)
);
CREATE TABLE PaymentResponse (
    transactionId VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL,
    PRIMARY KEY (transactionId)
);
CREATE TABLE TransactionLog (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    cardNumber VARCHAR(20) NOT NULL,
    amount DECIMAL(15, 2) NOT NULL,
    refundAmount DECIMAL(15, 2),
    additionalCharges DECIMAL(15, 2),
    transactionId VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL,
    failedAttempts INT DEFAULT 0,
    notes VARCHAR(255),
    FOREIGN KEY (cardNumber) REFERENCES CreditCardDetails(cardNumber)
);


INSERT INTO USER (username, password, email) VALUES ('user1', 'password1', 'user1@example.com');
INSERT INTO USER (username, password, email) VALUES ('user2', 'password2', 'user2@example.com');
INSERT INTO USER (username, password, email) VALUES ('user3', 'password3', 'user3@example.com');
