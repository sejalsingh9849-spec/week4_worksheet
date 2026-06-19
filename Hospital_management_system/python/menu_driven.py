patients = []
def add_patient():
    name = input("Enter Patient Name: ")
    patients.append(name)
    print("Patient Added Successfully")

def view_patients():
    if len(patients) == 0:
        print("No Patients Found")
    else:
        for patient in patients:
            print(patient)


def search_patient():
    name = input("Enter Patient Name: ")
    if name in patients:
        print("Patient Found")
    else:
        print("Patient Not Found")

while True:
    print("\n1.Add Patient")
    print("2.View Patients")
    print("3.Search Patient")
    print("4.Exit")
    choice = int(input("Enter Choice: "))

    if choice == 1:
        add_patient()

    elif choice == 2:
        view_patients()

    elif choice == 3:
        search_patient()

    elif choice == 4:
        print("Thank You")
        break

    else:
        print("Invalid Choice")