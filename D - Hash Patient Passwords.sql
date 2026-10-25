-- Adding a new column
ALTER TABLE Patient
ADD PasswordHash VARCHAR(64);

-- Add a password
UPDATE Patient
SET PasswordHash = SHA2('PatientPass123', 256)
WHERE PatientID = 'OP001';

-- Check the stored hash:
SELECT PatientID, PasswordHash
FROM Patient
WHERE PatientID = 'OP001';