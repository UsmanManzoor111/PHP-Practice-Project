DROP DATABASE IF EXISTS PROJECT;

CREATE DATABASE IF NOT EXISTS PROJECT;

USE PROJECT;

Drop Table IF EXISTS ADMIN;

Drop Table IF EXISTS CUSTOMER;

Drop Table IF EXISTS STAFF;

Drop Table IF EXISTS PHOTOGRAPHER;

Drop Table IF EXISTS MENU;

Drop Table IF EXISTS HALL;

Drop Table IF EXISTS RESERVATION;

CREATE TABLE ADMIN (
    ADMIN_ID INT AUTO_INCREMENT,
    USERNAME varchar(50) NOT NULL,
    PASSWORD varchar(50) NOT NULL,
    PRIMARY KEY(ADMIN_ID)
);

INSERT INTO ADMIN(USERNAME, PASSWORD) VALUES ("usman", "usman123");

CREATE TABLE CUSTOMER(
    CUS_NAME varchar(50) NOT NULL,
    USERNAME varchar(50) NOT NULL,
    PASSWORD varchar(50) NOT NULL,
    AGE varchar(50) NOT NULL,
    CONTACTNUMBER varchar(50) NOT NULL,
    EMAIL varchar(50) NOT NULL,
    ADDRESS varchar(50) NOT NULL,
    PRIMARY KEY(CUS_NAME)
);

INSERT INTO CUSTOMER VALUES ("Usman Manzoor", "Usman", "usman123", "20", "03369589172", "usman@gmail.com", "Haripur");
INSERT INTO CUSTOMER VALUES ("Tayyab Naveed", "Tayyab", "tayyab123", "21", "03363453212", "tayyab@gmail.com", "Haripur");
INSERT INTO CUSTOMER VALUES ("Zohaib Khan", "Zohaib", "zohaib123", "19", "03345612342", "zohaib@gmail.com", "Lahore");

CREATE TABLE STAFF(
    STAFF_ID INT NOT NULL AUTO_INCREMENT,
    STAFF_NAME VARCHAR(50) NOT NULL,
    STAFF_CATEGORY VARCHAR(50) NOT NULL,
    STAFF_AGE VARCHAR(50) NOT NULL,
    STAFF_SALARY VARCHAR(50) NOT NULL,
    STAFF_CONTACTNUMBER VARCHAR(50) NOT NULL,
    STAFF_ADDRESS VARCHAR(50) NOT NULL,
    PRIMARY KEY(STAFF_ID)
);

    INSERT INTO STAFF VALUES (NULL, "Haris", "Sheff", "29", "45,000", "03345612342", "Lahore");

    INSERT INTO STAFF VALUES (NULL, "Anwar", "Guard", "29", "20,000", "03345612342", "Lahore");

    INSERT INTO STAFF VALUES (NULL, "Petter", "Waiter", "29", "15,000", "03345612342", "Lahore");

CREATE TABLE PHOTOGRAPHER(
    PH_NAME VARCHAR(50) NOT NULL,
    EXPERIENCE VARCHAR(50) NOT NULL,
    AVALABILITY VARCHAR(50) NOT NULL,
    AGE varchar(50) NOT NULL,
    SALARY VARCHAR(50) NOT NULL,
    CONTACTNUMBER VARCHAR(50) NOT NULL,
    ADDRESS VARCHAR(50) NOT NULL,
    PRIMARY KEY(PH_NAME)
);

INSERT INTO PHOTOGRAPHER VALUES ("Stark", "2 Years", "Yes", "30", "55,000", "03345612342", "Rawalpindi");

INSERT INTO PHOTOGRAPHER VALUES ("John", "1 Years", "No", "30", "35,000", "03345612342", "Lahore");

CREATE TABLE MENU(
    DISH_ID INT NOT NULL AUTO_INCREMENT,
    DISH_NAME VARCHAR(50) NOT NULL,
    DISH_TYPE VARCHAR(50)   NOT NULL,
    PRIMARY KEY(DISH_ID)
);

INSERT INTO MENU VALUES (NULL, "Russian Salad", "Sarters");

INSERT INTO MENU VALUES (NULL, "Mango Juice", "Cold Drinks");

INSERT INTO MENU VALUES (NULL, "Chinesse Rice", "Food");

INSERT INTO MENU VALUES (NULL, "Chicken Karai", "Food");

CREATE TABLE HALL(
    HALL_NAME VARCHAR(50) NOT NULL,
    HALL_SPACING VARCHAR(50) NOT NULL,
    RENT_CHARGERS VARCHAR(50) NOT NULL,
    PRIMARY KEY(HALL_NAME)
);

INSERT INTO HALL VALUES ("First Hall", "250", "200,000");

INSERT INTO HALL VALUES ("Second Hall", "400", "350,000");

CREATE TABLE RESERVATION(
    RES_Id INT NOT NULL AUTO_INCREMENT,
    CUS_NAME VARCHAR(50) NOT NULL,
    DISH_NAME varchar(50) NOT NULL,
    PH_NAME varchar(50) NOT NULL,
    TOTAL_GUESTS INT NOT NULL,
    TOTAL_DAYS INT NOT NULL,
    BOOKING_Date Date NOT NULL,
    PRIMARY KEY(RES_Id),
    INDEX (CUS_NAME),
    INDEX (PH_NAME),
    CONSTRAINT FK_CUS_ID FOREIGN KEY (CUS_NAME) REFERENCES CUSTOMER(CUS_NAME),
    CONSTRAINT FK_PH_NAME FOREIGN KEY (PH_NAME) REFERENCES PHOTOGRAPHER(PH_NAME)
);

INSERT INTO RESERVATION VALUES (NULL, "Usman Manzoor", "Russian Salad, Mango Juice", "Stark", 300, 5, "2022-01-23");

INSERT INTO RESERVATION VALUES (NULL, "Zohaib Khan", "Russian Salad", "John", 300, 5, "2022-01-23");