CREATE TABLE board
(
no int AUTO_INCREMENT PRIMARY KEY,
title varchar(200),
name varchar(20),
password varchar(20),
email varchar(20),
contents text,
wtime datetime default CURRENT_TIMESTAMP,
rcnt int DEFAULT 0
);