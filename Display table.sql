
use hospital;

SELECT * FROM Patients;
SELECT * FROM Doctors;
SELECT * FROM Departments;
SELECT * FROM Rooms;
SELECT * FROM Admissions;
SELECT * FROM Appointments;
SELECT * FROM Treatments;

SELECT COUNT(DISTINCT PatientID) AS NumberOfPatientID
FROM Treatments;

SELECT COUNT(DISTINCT DoctorID) AS NumberOfDoctors
FROM Treatments;

SELECT COUNT(DISTINCT DepartmentID) AS NumberOfDepartments
FROM Departments;

SELECT COUNT(DISTINCT RoomID) AS NumberOfRooms
FROM Rooms;

SELECT COUNT(DISTINCT AdmissionID) AS NumberOfAdmissions
FROM Admissions;

SELECT COUNT(DISTINCT AppointmentID) AS NumberOfAppointments
FROM Appointments;

SELECT COUNT(DISTINCT TreatmentID) AS NumberOfTreatments
FROM Treatments;

SELECT A.AppointmentID, P.PatientID, P.Names AS PatientName, D.DoctorID, D.Name AS DoctorName , Date , Time
FROM Appointments A
JOIN Patients P ON A.PatientID = P.PatientID
JOIN Doctors D ON A.DoctorID = D.DoctorID;



--------------------------------------------------------------------------------------------------------------------------------------------------
--1. Simple Treatments Display
SELECT 
    T.TreatmentID,
    P.Names AS PatientName,
    D.Name AS DoctorName,
    T.Date AS TreatmentDate,
    T.Diagnosis,
    T.Prescription
FROM 
    Treatments T
JOIN 
    Patients P ON T.PatientID = P.PatientID
JOIN 
    Doctors D ON T.DoctorID = D.DoctorID;

--------------------------------------------------------------------------------------------------------------------------------------------------
--2. Simple Admissions Display

	SELECT 
    A.AdmissionID,
    P.Names AS PatientName,
    R.RoomNumber,
    A.AdmissionDate,
    A.DischargeDate
FROM 
    Admissions A
JOIN 
    Patients P ON A.PatientID = P.PatientID
JOIN 
    Rooms R ON A.RoomID = R.RoomID;

--------------------------------------------------------------------------------------------------------------------------------------------------
--3. Simple Appointments Display
	SELECT 
    AP.AppointmentID,
    P.Names AS PatientName,
    D.Name AS DoctorName,
    AP.Date AS AppointmentDate,
    AP.Time AS AppointmentTime,
    AP.Reason,
    R.RoomNumber
FROM 
    Appointments AP
JOIN 
    Patients P ON AP.PatientID = P.PatientID
JOIN 
    Doctors D ON AP.DoctorID = D.DoctorID
JOIN 
    Rooms R ON D.DepartmentID = R.DepartmentID;


--------------------------------------------------------------------------------------------------------------------------------------------------
--SQL Query for 3 Patients with their Appointments, Doctors, and Medicines:

	SELECT 
    P.Names AS PatientName,
    A.Date AS AppointmentDate,
    A.Time AS AppointmentTime,
    D.Name AS DoctorName,
    T.Diagnosis,
    T.Prescription AS Medicine
FROM 
    Patients P
JOIN 
    Appointments A ON P.PatientID = A.PatientID
JOIN 
    Doctors D ON A.DoctorID = D.DoctorID
LEFT JOIN 
    Treatments T ON P.PatientID = T.PatientID AND D.DoctorID = T.DoctorID
WHERE 
    P.PatientID IN (1, 2, 3) -- Limiting to 3 specific patients
ORDER BY 
    P.PatientID, A.Date, A.Time;


	