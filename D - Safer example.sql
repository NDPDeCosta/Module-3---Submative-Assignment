-- Safer example using a prepared statement:
PREPARE patient_query
FROM 'SELECT PatientID, PatientName
      FROM Patient
      WHERE PatientID = ?';

SET @patient_id = 'OP001';

EXECUTE patient_query USING @patient_id;

DEALLOCATE PREPARE patient_query;
