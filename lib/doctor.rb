class Doctor
    attr_reader :name

    attr_accessor :appointments

    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @@all << self
    end

    def self.all 
        @@all 
    end

    def new_appointment(patient,date)
        Appointment.new(date,patient,self)
    end

    def patients
        results = []
        self.appointments.each do |appt|
            if !results.include?(appt.patient)
                results << appt.patient 
            end
        end
        results  
    end
end
