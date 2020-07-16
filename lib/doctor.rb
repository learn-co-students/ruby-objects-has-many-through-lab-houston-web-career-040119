class Doctor

  attr_reader :name
  
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    self.appointments.map do |appointment|
      appointment.patient
    end
  end

end
