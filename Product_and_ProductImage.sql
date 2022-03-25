Create table Product(
productId varchar(5),
productName varchar(255),
productPrice float,
productPublicationDate date,
productSize enum("Small","Medium","Large"),
isSelled boolean 
);

Create index productId_index on Product(productId );

Create table ProductImage(
productId varchar(5), 
productImageUrl varchar(255),
);
ALTER TABLE ProductImage CONSTRAINT fk_productImage
FOREIGN KEY (productId )
REFERENCES Product (productId )

CREATE INDEX Product_index
ON Product(productName,productPrice ,productPublicationDate);

Insert into Product (productId ,productName ,productPrice,productPublicationDate,productSize,isSelled )
values('SP01','Tranh 1','800000','2022/03/22','Small',false),
('SP02','Tranh 2','800000','2022/03/23','Small',true);

Insert into ProductImage (productId ,productImageUrl )
values ('SP01','anh.jpg'),
('SP02','anh2.jpg');