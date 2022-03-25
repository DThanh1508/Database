create table ProductComment(
 productCommentId int not null primary key,
commentID int,
 userID varchar(10),
 userCommentContent text not null,
 time datetime() not null,
 );
Create index productCommentId_index on ProductComment(productCommentId );

Insert Into  ProductComment(“productCommentId”,  “commentId”, “userId”, “userCommentContent”,
“time”) VALUES
(1, 1, ‘US01’, ‘hàng đẹp lắm ạ’, ‘2022-03-23 23:10:25’),
(2, 2, ‘US02’, ‘nice’, ‘2022-03-23 20:10:28’),
(3, 3, ‘US03’, ‘tranh đẹp lắm luôn ý’,  ‘2022-03-23 13:10:25’)
);

create table ProductReact( 
productId varchar(5),
userId varchar(10),
ALTER TABLE ProductReact CONSTRAINT fk_ProductReact FOREIGN KEY (productId )
REFERENCES Product (productId),

ALTER TABLE ProductReact CONSTRAINT fk_ProductReact
FOREIGN KEY (userId )
REFERENCES Product (userId)
);
Insert Into  ProductReact( ‘productId’, ‘userId’)
VALUES
(‘SP01’, ‘US01’),
(‘SP02’, ‘US02’),
(‘SP03’, ‘US03’)
);

create table Purchase( 
userId varchar(10),
 productId varchar(5),
ALTER TABLE ProductReact CONSTRAINT fk_ProductReact FOREIGN KEY (productId )
REFERENCES Product (productId),

ALTER TABLE ProductReact CONSTRAINT fk_ProductReact
FOREIGN KEY (userId )
REFERENCES Product (userId)
);

Insert Into  ProductReact( ‘userID’, ‘productId’)
VALUES
(‘US01’, ‘SP01’),
( ‘US02’,‘SP02’),
( ‘US03’,‘SP03’,)
);
