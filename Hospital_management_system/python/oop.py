class Patient:
    def __init__(self, patient_id, name):
        self.patient_id = patient_id
        self.name = name
    def display(self):
        print("Patient ID:", self.patient_id)
        print("Patient Name:", self.name)

class Doctor(Patient):
    def __init__(self, patient_id, name, specialization):
        super().__init__(patient_id, name)
        self.__specialization = specialization

    def show(self):
        self.display()
        print("Specialization:", self.__specialization)

p1 = Patient(1, "Rahul")
d1 = Doctor(101, "Dr. Smith", "Cardiology")

print("Patient Object")
p1.display()

print("\nDoctor Object")
d1.show()