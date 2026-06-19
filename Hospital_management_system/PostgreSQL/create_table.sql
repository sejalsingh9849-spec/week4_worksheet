CREATE TABLE patients(
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10),
    phone VARCHAR(15)
);

CREATE TABLE departments(
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE doctors(
    doctor_id SERIAL PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    department_id INT,
    FOREIGN KEY(department_id)
    REFERENCES departments(department_id)
);

CREATE TABLE appointments(
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE NOT NULL,
    FOREIGN KEY(patient_id)
    REFERENCES patients(patient_id),
    FOREIGN KEY(doctor_id)
    REFERENCES doctors(doctor_id)
);

CREATE TABLE bills(
    bill_id SERIAL PRIMARY KEY,
    patient_id INT,
    amount DECIMAL(10,2),
    FOREIGN KEY(patient_id)
    REFERENCES patients(patient_id)
);