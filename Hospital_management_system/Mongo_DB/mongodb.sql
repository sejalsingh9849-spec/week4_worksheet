use hospitalDB

// Insert Patients

db.patients.insertOne({
    patient_id:1,
    name:"Rahul",
    city:"Hyderabad"
})

db.patients.insertOne({
    patient_id:2,
    name:"Priya",
    city:"Warangal"
})

// View Patients

db.patients.find()

// Update Patient

db.patients.updateOne(
    { patient_id:1 },
    { $set:{ city:"Karimnagar" } }
)

// Delete Patient

db.patients.deleteOne(
    { patient_id:2 }
)

// Insert Appointment

db.appointments.insertOne({
    appointment_id:101,
    patient_name:"Rahul",
    doctor_name:"Dr. Smith"
})

// Aggregation - Count Patients City Wise

db.patients.aggregate([
    {
        $group:{
            _id:"$city",
            totalPatients:{ $sum:1 }
        }
    }
])