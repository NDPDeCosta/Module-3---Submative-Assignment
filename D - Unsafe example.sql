-- Unsafe example:
SELECT *
FROM PATIENT
WHERE PatientID = 'OP001' OR '1'='1';
