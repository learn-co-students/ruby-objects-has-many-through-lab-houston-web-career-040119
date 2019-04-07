

require "appointment.rb"
require "patient.rb"


class Doctor

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 


        @@all << self 
    end

    def appointments
#The Doctor class needs an instance method, #appointments, that iterates through
# all Appointments and finds those belonging to this doctor.
        Appointment.all.select do |appointment|
            appointment.doctor == self 
        end

    end

    def patients 
        #The Doctor class needs an instance method, #patients, that iterates over that 
        #doctor's Appointments and collects the patient that belongs to each Appointments.
        self.appointments.map do |appointment|
            appointment.patient
        end
    end


    def new_appointment(patient, date)
      Appointment.new(date, patient, self)
    end

    def self.all
        @@all
    end

    # def patients
    #     Appointment.all.select do |

end