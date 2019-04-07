
require "appointment.rb"
require "doctor.rb"


class Patient

    @@all = []
    def initialize(name)
        @name = name 

        @@all << self
    end

    def appointments
    #The Patient class needs an instance method, #appointments, that iterates through the Appointments 
    #array and returns Appointments that belong to the patient.
        Appointment.all.select do |appointment|
            appointment.patient
        end
    end

    def doctors
    #The Patient class needs an instance method, #doctors, that iterates over that patient's Appointments
    # and collects the doctor that belongs to each Appointment.
        self.appointments.map do |appointment|
            appointment.doctor
        end

    end

    def new_appointment(doctor, date)
    #The Patient class needs an instance method, #new_appointment, that takes in an argument of a doctor
    # and a date and creates a new Appointment. The Appointment should know that it belongs to the patient.
        Appointment.new(date, self, doctor)

    end

    def self.all
        @@all 
    end
end