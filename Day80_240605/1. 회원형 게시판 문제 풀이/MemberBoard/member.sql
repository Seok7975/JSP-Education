CREATE TABLE member(
name VARCHAR(20) NOT NULL,
id varchar(20) PRIMARY KEY,
nickname VARCHAR(20) NOT NULL, 					#nickname VARCHAR(20) UNIQUE,
pw VARCHAR(20) NOT NULL,
email varchar(50) NOT NULL,
postcode VARCHAR(6) NOT NULL,
roadAddress VARCHAR(40) NOT NULL,
jibunAddress VARCHAR(40) NOT NULL,
detailAddress VARCHAR(40) NOT NULL,
extraAddress VARCHAR(40) NOT NULL,
birthYear INT NOT NULL,
birthMonth INT NOT NULL,
birthDate INT NOT NULL,
cellphone CHAR(11) NOT NULL,
gender CHAR(6) NOT NULL
);