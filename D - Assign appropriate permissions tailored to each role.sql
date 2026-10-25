USE EyeClinicDB;
-- CREATE FOUR DATABASE ROLES
CREATE ROLE IF NOT EXISTS 'Administrator';
CREATE ROLE IF NOT EXISTS 'Doctor';
CREATE ROLE IF NOT EXISTS 'Receptionist';
CREATE ROLE IF NOT EXISTS 'Patient';

-- ADMINISTRATOR PRIVILEGES
-- Full access to all six tables
GRANT SELECT, INSERT, UPDATE, DELETE
ON EyeClinicDB.*
TO 'Administrator';

-- DOCTOR PRIVILEGES
--- Grant permission to view patient information
GRANT SELECT ON EyeClinicDB.Patient
TO 'Doctor';

-- Grant permission to view clinician information
GRANT SELECT ON EyeClinicDB.Clinician
TO 'Doctor';

-- Grant permission to view specialties
GRANT SELECT ON EyeClinicDB.Specialty
TO 'Doctor';

-- Grant permission to view clinic information
GRANT SELECT ON EyeClinicDB.Clinic
TO 'Doctor';

-- Grant permission to view appointments
GRANT SELECT ON EyeClinicDB.Appointment
TO 'Doctor';

-- Grant permission to view diagnoses
GRANT SELECT ON EyeClinicDB.Diagnosis
TO 'Doctor';

-- Grant permission to view appointment diagnoses
GRANT SELECT ON EyeClinicDB.AppointmentDiagnosis
TO 'Doctor';

-- Grant permission to view prescriptions
GRANT SELECT ON EyeClinicDB.Prescription
TO 'Doctor';

-- Grant permission to view medicines
GRANT SELECT ON EyeClinicDB.Medicine
TO 'Doctor';

-- Grant permission to view prescription items
GRANT SELECT ON EyeClinicDB.PrescriptionItem
TO 'Doctor';

-- Grant permission to view follow-up plans
GRANT SELECT ON EyeClinicDB.FollowUpPlan
TO 'Doctor';

-- Allow doctors to add and update diagnoses
GRANT INSERT, UPDATE ON EyeClinicDB.Diagnosis
TO 'Doctor';

GRANT INSERT, UPDATE ON EyeClinicDB.AppointmentDiagnosis
TO 'Doctor';

-- Allow doctors to add and update prescriptions
GRANT INSERT, UPDATE ON EyeClinicDB.Prescription
TO 'Doctor';

GRANT INSERT, UPDATE ON EyeClinicDB.PrescriptionItem
TO 'Doctor';

-- Allow doctors to add and update follow-up plans
GRANT INSERT, UPDATE ON EyeClinicDB.FollowUpPlan
TO 'Doctor';

-- Allow doctors to update appointment details
GRANT UPDATE ON EyeClinicDB.Appointment
TO 'Doctor';

-- RECEPTIONIST PRIVILEGES
-- Manage patient registrations and appointments
GRANT SELECT
ON EyeClinicDB.Patient
TO 'Receptionist';

GRANT INSERT, UPDATE
ON EyeClinicDB.Patient
TO 'Receptionist';

GRANT SELECT
ON EyeClinicDB.Clinician
TO 'Receptionist';

GRANT SELECT
ON EyeClinicDB.Specialty
TO 'Receptionist';

GRANT SELECT
ON EyeClinicDB.Clinic
TO 'Receptionist';

GRANT SELECT, INSERT, UPDATE
ON EyeClinicDB.Appointment
TO 'Receptionist';

-- PATIENT PRIVILEGES
-- Basic access to appointment information
GRANT SELECT
ON EyeClinicDB.Appointment
TO 'Patient';