drop database NDQG;
create database NDQG;
use NDQG;
create TABLE Users(
userId  varchar(10) NOT NULL PRIMARY KEY,
userName varchar(50) not null,
userGender enum('male', 'female','other'),
userPhone varchar(11),
userEmail varchar(255)
);
create TABLE Address(
userId varchar(10) not null,
city varchar(50) not null,
district varchar(50) not null,
ward varchar(50) not null,
detail varchar(255)
);
ALTER TABLE Address
ADD CONSTRAINT fk_Address_userId
 FOREIGN KEY (userId)
 REFERENCES Users (userId);
 
 
 insert into Users
 values
 ('US01','Nguyen Van A','male','03959608','anguyen@gmail.com'),
 ('US02','Nguyen Thi B','male','03959608','bnguyen@gmail.com');
 
 insert into Address
 values
 ('US01','Da Nang','Son Tra','Phuoc My','abc'),
 ('US02','Da Nang','Son Tra','An Hai Dong','abc');
 