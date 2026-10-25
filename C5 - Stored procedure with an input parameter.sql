USE EyeClinicDB;

DROP PROCEDURE IF EXISTS GetPatientAppointments;

DELIMITER //

CREATE PROCEDURE GetPatientAppointments(
    IN p_PatientID VARCHAR(10)
)
BEGIN
    SELECT
        a.AppointmentID,
        p.PatientName,
        a.AppointmentDate,
        a.AppointmentTime,
        a.Notes
    FROM Appointment AS a
    INNER JOIN Patient AS p
        ON a.PatientID = p.PatientID
    WHERE a.PatientID = p_PatientID;
END //

DELIMITER ;