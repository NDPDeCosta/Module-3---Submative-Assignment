USE EyeClinicDB;

SELECT
    Patient.PatientID,
    Patient.PatientName,
    (
        SELECT COUNT(*)
        FROM Appointment
        WHERE Appointment.PatientID = Patient.PatientID
    ) AS TotalAppointments
FROM Patient
WHERE Patient.PatientID IN (
    SELECT PatientID
    FROM Appointment
    GROUP BY PatientID
    HAVING COUNT(*) > 1
);