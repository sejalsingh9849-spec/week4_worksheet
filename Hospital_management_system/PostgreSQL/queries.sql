SELECT * FROM patients;

SELECT * FROM doctors;

SELECT *
FROM appointments
WHERE doctor_id = 1;

SELECT doctor_id,
COUNT(*) AS total_appointments
FROM appointments
GROUP BY doctor_id;

SELECT SUM(amount)
FROM bills;

SELECT p.name,
a.appointment_date
FROM patients p
INNER JOIN appointments a
ON p.patient_id = a.patient_id;

SELECT d.doctor_name,
a.appointment_date
FROM doctors d
LEFT JOIN appointments a
ON d.doctor_id = a.doctor_id;

SELECT patient_id,
COUNT(*)
FROM appointments
GROUP BY patient_id
HAVING COUNT(*) > 1;

SELECT MAX(amount)
FROM bills;

SELECT doctor_id,
COUNT(*) AS total
FROM appointments
GROUP BY doctor_id
ORDER BY total DESC
LIMIT 1;