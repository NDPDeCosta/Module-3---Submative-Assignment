SELECT
    p.PatientName,
    a.AppointmentDate,
    a.AppointmentTime,
    c.ClinicianName
FROM Appointment AS a
INNER JOIN Patient AS p
    ON a.PatientID = p.PatientID
INNER JOIN Clinician AS c
    ON a.ClinicianID = c.ClinicianID;