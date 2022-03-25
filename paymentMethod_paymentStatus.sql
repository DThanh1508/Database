CREATE TABLE paymentMethod (
     paymentMethodID    int AUTO_INCREMENT,
     paymentMethod varchar(50) NOT NULL,
     PRIMARY KEY (paymentMethodId)
);

CREATE TABLE paymentStatus (
     orderStatusID  int AUTO_INCREMENT,
     isPayed  tinyint(100),
     paymentTime datetime,
     paymentMethodID int,
     PRIMARY KEY (orderStatusID)
);

ALTER TABLE paymentStatus
ADD FOREIGN KEY (paymentMethodID ) REFERENCES paymentMethod(paymentMethodID);

INSERT INTO paymentMethod
VALUES 
("1", "Tiền mặt"),
("2", "Qua Zalo"),
("3","Qua VCB");

INSERT INTO paymentStatus
VALUES 
("1", 1,"2021-03-25", "1"),
("2", 0,"2020-03-24", "2"),
("3", 1,"2022-03-25", "1");
