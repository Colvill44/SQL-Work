DROP DATABASE IF EXISTS Hospital;
CREATE DATABASE Hospital;
USE Hospital;

CREATE TABLE Physician (
	physician_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    certnum INT NOT NULL,
    address VARCHAR(75) NOT NULL,
    phone VARCHAR(10) NOT NULL
);

CREATE TABLE Nurse (
	nurse_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    certnum INT NOT NULL,
    address VARCHAR(75) NOT NULL,
    phone VARCHAR(10) NOT NULL
);

CREATE TABLE Patient (
	patient_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(75) NOT NULL,
    phone VARCHAR(10) NOT NULL
);

CREATE TABLE Record (
	patient_id INT NOT NULL,
    disease VARCHAR(50) NOT NULL,
    date VARCHAR(10) NOT NULL,
    status VARCHAR(20) NOT NULL,
    description VARCHAR(500) NOT NULL,
    FOREIGN KEY Record(patient_id) REFERENCES Patient(patient_id)
);

CREATE TABLE Instructions (
	instruction_id INT PRIMARY KEY NOT NULL,
	date VARCHAR(10) NOT NULL,
	physician_id INT NOT NULL REFERENCES Physician(physician_id),
	nurse_id INT NOT NULL REFERENCES Nurse(nurse_id),
	patient_id INT NOT NULL REFERENCES Patient(patient_id),
	status VARCHAR(20) NOT NULL,
	fee DECIMAL(6, 2) NOT NULL,
	description VARCHAR(500) NOT NULL
);

CREATE TABLE Medication (
	patient_id INT REFERENCES Patient(patient_id),
    type VARCHAR(50) NOT NULL,
    amount VARCHAR(50) NOT NULL,
    nurse_id INT NOT NULL REFERENCES Nurse(nurse_id)
);

CREATE TABLE Payment (
	patient_id INT NOT NULL,
    amount DECIMAL(6, 2),
    date VARCHAR(10),
    FOREIGN KEY Payment(patient_id) REFERENCES Patient(patient_id)
);
