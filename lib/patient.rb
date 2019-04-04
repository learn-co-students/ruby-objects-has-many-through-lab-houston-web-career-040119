class Patient
    attr_reader :name
    attr_accessor :appointments

    @@all = []

    def initialize(name)
        @name = name 
        @appointments = []
        @@all << self
    end
    
    def new_appointment(doctor,date)
        Appointment.new(date,self,doctor)
    end

    def self.all 
        @@all 
    end

    def doctors
        results = []
        self.appointments.each do |appt|
            if !results.include?(appt.doctor)
                results << appt.doctor 
            end
        end
        results 
    end
end
