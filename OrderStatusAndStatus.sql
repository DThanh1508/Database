<?php
$servername = "localhost";
$username = "username";
$password = "";
$dbname = "";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}else{
    echo "Conect successfully";
}

// Create table OrderStatus
$OrderStatus = "CREATE TABLE OrderStatus (
    oderStatusId INT(5) USIGNED AUTO_INCREMENT PRIMARY KEY,
    orderId VARCHAR(10) NOT NULL,
    statusId INT(6) USIGNED AUTO_INCREMENT,
    statusTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)";

// Create table Status
$Status ="CREATE TABLE Status(
    statusId INT(5) USIGNED AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(50) UNIQUE
)";
if ($conn->query($OrderStatus) === TRUE || $conn->query($Status) === TRUE){
  echo "Table MyGuests created successfully";
} else {
  echo "Error creating table: " . $conn->error;
}