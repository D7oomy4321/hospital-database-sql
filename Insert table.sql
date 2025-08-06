USE hospital;

--  Insert  Patients
INSERT INTO Patients (PatientID, Names, DOB, Gender, Phone, Addres) VALUES
(1, 'Ahmed Mohammed', '1982-04-13', 'Male', '0501234567', 'Riyadh'),
(2, 'Sarah Ali', '1995-08-22', 'Female', '0502345678', 'Jeddah'),
(3, 'Khalid Abdullah', '1970-03-11', 'Male', '0503456789', 'Dammam'),
(4, 'Laila Youssef', '2001-07-02', 'Female', '0504567890', 'Mecca'),
(5, 'Nasser Fahad', '1989-11-25', 'Male', '0505678901', 'Medina'),
(6, 'Fatima Hassan', '1992-05-17', 'Female', '0506789012', 'Taif'),
(7, 'Saud Abdulaziz', '1965-10-30', 'Male', '0507890123', 'Yanbu'),
(8, 'Reem Saad', '2000-01-14', 'Female', '0508901234', 'Hofuf'),
(9, 'Abdulrahman Nasser', '1978-06-09', 'Male', '0509012345', 'Hail'),
(10, 'Mona Majid', '1985-12-03', 'Female', '0500123456', 'Najran'),
(11, 'Yasser Rashed', '1999-03-28', 'Male', '0509876543', 'Unayzah'),
(12, 'Nora Adel', '1968-09-07', 'Female', '0508765432', 'Buraidah'),
(13, 'Mazen Saleh', '1973-11-19', 'Male', '0507654321', 'Al-Jouf'),
(14, 'Huda Talal', '1996-02-10', 'Female', '0506543210', 'Bisha'),
(15, 'Ali Hussein', '1980-08-01', 'Male', '0505432109', 'Arar'),
(16, 'Abeer Sami', '2002-10-22', 'Female', '0504321098', 'Tabuk'),
(17, 'Rakan Mansour', '1975-04-05', 'Male', '0503210987', 'Jazan'),
(18, 'Shatha Ibrahim', '1990-07-29', 'Female', '0502109876', 'Khobar'),
(19, 'Abdullah Marzouk', '1983-06-12', 'Male', '0501098765', 'Buqayq'),
(20, 'Hind Zaid', '1998-01-20', 'Female', '0509988776', 'Sakaka'),
(21, 'Meshari Fawaz', '2005-03-15', 'Male', '0508877665', 'Al-Kharj'),
(22, 'Raghad Bandar', '1971-12-18', 'Female', '0507766554', 'Al-Zulfi'),
(23, 'Badr Abdulmajid', '1969-07-24', 'Male', '0506655443', 'Qatif'),
(24, 'Shahad Turki', '1987-09-09', 'Female', '0505544332', 'Al-Bahah'),
(25, 'Turki Nawaf', '1993-11-30', 'Male', '0504433221', 'Abha'),
(26, 'Dalal Mohammed', '1977-01-05', 'Female', '0503322110', 'Sharurah'),
(27, 'Ziyad Abdelkarim', '1984-05-08', 'Male', '0502211009', 'Rabigh'),
(28, 'Maysaa Fares', '1991-08-16', 'Female', '0501100998', 'Khamis Mushait'),
(29, 'Fahad Nasser', '2003-02-27', 'Male', '0500099887', 'Majmaah'),
(30, 'Amani Mazen', '1972-06-03', 'Female', '0509988775', 'Bukeiriya');

--  Insert  Doctors
SET IDENTITY_INSERT Doctors ON;
INSERT INTO Doctors (DoctorID, Name, Specialty, Phone, DepartmentID) VALUES
(1,N'Dr. Khaled Salem', N'Cardiologist', '0551000001', 1),
(2,N'Dr. Laila Hasan', N'Neurologist', '0551000002', 2),
(3,N'Dr. Omar Al Harbi', N'Surgeon', '0551000003', 3),
(4,N'Dr. Amani Zayed', N'Pediatrician', '0551000004', 4),
(5,N'Dr. Walid Anwar', N'Dermatologist', '0551000005', 5),
(6,N'Dr. Rania Fadhel', N'Psychiatrist', '0551000006', 6),
(7,N'Dr. Majed Saud', N'Dentist', '0551000007', 7),
(8,N'Dr. Samia Badr', N'Cardiologist', '0551000008', 1),
(9,N'Dr. Tamer Fouad', N'Neurologist', '0551000009', 2),
(10,N'Dr. Nour Rashed', N'Surgeon', '0551000010', 3),
(11,N'Dr. Yasser Ibrahim', N'Pediatrician', '0551000011', 4),
(12,N'Dr. Heba Mounir', N'Dermatologist', '0551000012', 5),
(13,N'Dr. Maha Asaad', N'Psychiatrist', '0551000013', 6),
(14,N'Dr. Nabil Amjad', N'Dentist', '0551000014', 7);


--  Insert  Departments
INSERT INTO Departments (DepartmentID, Name, Location) VALUES
(1, N'Cardiology', N'Building A'),
(2, N'Neurology', N'Building B'),
(3, N'Surgery', N'Building C'),
(4, N'Pediatrics', N'Building D'),
(5, N'Dermatology', N'Building E'),
(6, N'Psychiatry', N'Building F'),
(7, N'Dental', N'Building G');


-- Insert Rooms
INSERT INTO Rooms (RoomID, RoomNumber, Type, Capacity, DepartmentID) VALUES
(1, 'A101', 'Single', 1, 1),  -- Cardiology
(2, 'B202', 'Double', 2, 2),  -- Neurology
(3, 'C303', 'Single', 1, 3),  -- Surgery
(4, 'D404', 'ICU', 1, 4),     -- Pediatrics
(5, 'E505', 'Double', 2, 5),  -- Dermatology
(6, 'F606', 'Private', 1, 6), -- Dental
(7, 'F606', 'Private', 2, 7); -- Psychiatrist


-- Insert into Appointments table
INSERT INTO Appointments (PatientID, DoctorID, Date, Time, Reason) VALUES
(1, 1, '2025-05-10', '09:00:00', N'Routine checkup'),
(2, 2, '2025-05-10', '09:30:00', N'Headache evaluation'),
(3, 3, '2025-05-10', '10:00:00', N'Surgery consultation'),
(4, 4, '2025-05-10', '10:30:00', N'Child fever'),
(5, 5, '2025-05-10', '11:00:00', N'Skin rash'),
(6, 1, '2025-05-11', '09:00:00', N'Follow-up checkup'),
(7, 2, '2025-05-11', '09:30:00', N'Migraine treatment'),
(8, 3, '2025-05-11', '10:00:00', N'Surgery prep'),
(9, 4, '2025-05-11', '10:30:00', N'Flu symptoms'),
(10, 5, '2025-05-11', '11:00:00', N'Skin allergy');


-- Insert into  table

INSERT INTO Treatments (TreatmentID, PatientID, DoctorID, Date, Diagnosis, Prescription) VALUES
(1, 1, 1, CAST('2025-05-10' AS DATE), 'Hypertension', 'Beta blockers'),
(2, 2, 2, CAST('2025-05-11' AS DATE), 'Migraine', 'Pain relievers'),
(3, 3, 3, CAST('2025-05-12' AS DATE), 'Appendicitis', 'Antibiotics and surgery'),
(4, 4, 4, CAST('2025-05-13' AS DATE), 'Fever', 'Antipyretics'),
(5, 5, 5, CAST('2025-05-14' AS DATE), 'Skin rash', 'Topical steroids'),
(6, 6, 6, CAST('2025-05-15' AS DATE), 'Anxiety', 'Anti-anxiety medications'),
(7, 7, 7, CAST('2025-05-16' AS DATE), 'Dental cavities', 'Dental cleaning and filling'),
(8, 8, 8, CAST('2025-05-17' AS DATE), 'Cardiac arrhythmia', 'Antiarrhythmic drugs'),
(9, 9, 9, CAST('2025-05-18' AS DATE), 'Back pain', 'Muscle relaxants'),
(10, 10, 10, CAST('2025-05-19' AS DATE), 'Asthma', 'Inhalers'),
(11, 11, 11, CAST('2025-05-20' AS DATE), 'Flu', 'Antiviral meds'),
(12, 12, 12, CAST('2025-05-21' AS DATE), 'Bronchitis', 'Cough suppressants'),
(13, 13, 13, CAST('2025-05-22' AS DATE), 'High cholesterol', 'Statins'),
(14, 14, 14, CAST('2025-05-23' AS DATE), 'Arthritis', 'NSAIDs'),
(15, 15, 1, CAST('2025-05-24' AS DATE), 'Hypertension', 'Beta blockers'),
(16, 16, 2, CAST('2025-05-25' AS DATE), 'Migraine', 'Pain relievers'),
(17, 17, 3, CAST('2025-05-26' AS DATE), 'Appendicitis', 'Antibiotics and surgery'),
(18, 18, 4, CAST('2025-05-27' AS DATE), 'Fever', 'Antipyretics'),
(19, 19, 5, CAST('2025-05-28' AS DATE), 'Skin rash', 'Topical steroids'),
(20, 20, 6, CAST('2025-05-29' AS DATE), 'Anxiety', 'Anti-anxiety medications'),
(21, 21, 7, CAST('2025-05-30' AS DATE), 'Dental cavities', 'Dental cleaning and filling'),
(22, 22, 8, CAST('2025-05-31' AS DATE), 'Cardiac arrhythmia', 'Antiarrhythmic drugs'),
(23, 23, 9, CAST('2025-06-01' AS DATE), 'Back pain', 'Muscle relaxants'),
(24, 24, 10, CAST('2025-06-02' AS DATE), 'Asthma', 'Inhalers'),
(25, 25, 11, CAST('2025-06-03' AS DATE), 'Flu', 'Antiviral meds'),
(26, 26, 12, CAST('2025-06-04' AS DATE), 'Bronchitis', 'Cough suppressants'),
(27, 27, 13, CAST('2025-06-05' AS DATE), 'High cholesterol', 'Statins'),
(28, 28, 14, CAST('2025-06-06' AS DATE), 'Arthritis', 'NSAIDs'),
(29, 29, 1, CAST('2025-06-07' AS DATE), 'Hypertension', 'Beta blockers'),
(30, 30, 2, CAST('2025-06-08' AS DATE), 'Migraine', 'Pain relievers');





-- Insert data into Admissions table
INSERT INTO Admissions (AdmissionID, PatientID, RoomID, AdmissionDate, DischargeDate) VALUES
(1, 1, 1, '2025-05-10', '2025-05-12'),
(2, 2, 2, '2025-05-11', '2025-05-14'),
(3, 3, 3, '2025-05-12', '2025-05-15'),
(4, 4, 4, '2025-05-13', '2025-05-16'),
(5, 5, 5, '2025-05-14', '2025-05-17'),
(6, 6, 6, '2025-05-15', '2025-05-18'),
(7, 7, 7, '2025-05-16', '2025-05-19'),
(8, 8, 1, '2025-05-17', '2025-05-20'),
(9, 9, 2, '2025-05-18', '2025-05-21'),
(10, 10,3, '2025-05-19', '2025-05-22');
