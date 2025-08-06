CREATE DATABASE hospital;
USE hospital; 

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Names     VARCHAR(100),
    DOB      DATE,
    Gender VARCHAR(10),
    Phone VARCHAR(20),
    Addres VARCHAR(255)
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100),
    Specialty VARCHAR(100),
    Phone VARCHAR(20),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100)
);

  ALTER TABLE Doctors
  ADD DepartmentID INT;

  ALTER TABLE Doctors
  ADD CONSTRAINT fk_doctors_department
  FOREIGN KEY (DepartmentID)
  REFERENCES Departments(DepartmentID);

CREATE TABLE Appointments (
    AppointmentID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Date DATE,
    Time TIME,
    Reason NVARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);


CREATE TABLE Treatments (
    TreatmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Date DATE,
    Diagnosis TEXT,
    Prescription TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    RoomNumber VARCHAR(10),
    Type VARCHAR(50),
    Capacity INT,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Admissions (
    AdmissionID INT PRIMARY KEY,
    PatientID INT,
    RoomID INT,
    AdmissionDate DATE,
    DischargeDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);

----------------------------------------------------------------------------------------
DELETE FROM Appointments;
DELETE FROM Room;
DELETE FROM Patients;
DELETE FROM Doctors;
DELETE FROM Departments;
DELETE FROM Treatments;

DROP TABLE IF EXISTS Treatments;
DROP TABLE IF EXISTS Appointments;
DROP TABLE IF EXISTS Admissions;
DROP TABLE IF EXISTS Doctors;
DROP TABLE IF EXISTS Patients;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Departments;
