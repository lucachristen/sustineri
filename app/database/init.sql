CREATE TABLE IF NOT EXISTS users (
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username NVARCHAR(50) NOT NULL,
    password CHAR(64) NOT NULL,
);

CREATE TABLE IF NOT EXISTS receipts (
    receipt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    upload_date DATE NOT NULL,
    user_id INT NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE IF NOT EXISTS items (
    item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name NVARCHAR(1000) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    amount DECIMAL(12,4) NOT NULL,
    gwp DECIMAL(12, 4) NOT NULL,
    receipt_id INT NOT NULL,

    FOREIGN KEY (receipt_id) REFERENCES receipts(receipt_id)
);
>>>>>>> Update init SQL script
