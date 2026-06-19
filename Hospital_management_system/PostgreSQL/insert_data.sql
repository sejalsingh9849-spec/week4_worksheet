INSERT INTO departments(department_name)
VALUES
('Cardiology'),
('Neurology'),
('Orthopedics');

INSERT INTO doctors
(doctor_name,specialization,department_id)
VALUES
('Dr. Smith','Cardiologist',1),
('Dr. John','Neurologist',2),
('Dr. David','Orthopedic',3);

INSERT INTO patients
(name,age,gender,phone)
VALUES
('Rahul',25,'Male','9876543210'),
('Priya',28,'Female','9876543211'),
('Arjun',35,'Male','9876543212'),
('Sneha',22,'Female','9876543213'),
('Kiran',40,'Male','9876543214');

INSERT INTO appointments
(patient_id,doctor_id,appointment_date)
VALUES
(1,1,'2025-07-01'),
(2,2,'2025-07-02'),
(3,3,'2025-07-03'),
(4,1,'2025-07-04'),
(5,2,'2025-07-05');

INSERT INTO bills(patient_id,amount)
VALUES
(1,1500),
(2,2000),
(3,2500),
(4,1800),
(5,2200);