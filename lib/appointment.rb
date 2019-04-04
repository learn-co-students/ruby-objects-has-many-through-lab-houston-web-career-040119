class Appointment
    attr_reader :date, :patient, :doctor 
    @@all = []

    def initialize(date,patient,doctor)
        @date = date 
        doctor.appointments << self 
        patient.appointments << self 
        @patient = patient 
        @doctor = doctor 
        @@all << self
    end

    def self.all 
        @@all 
    end
end
