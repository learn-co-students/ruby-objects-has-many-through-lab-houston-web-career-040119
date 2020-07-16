class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor,date)
    #given a doctor and date, creates a new appointment belonging to that patient
    Appointment.new(date,self,doctor)
  end

  def appointments
    #returns and array of all appointments for this patient
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    #returns an array of all doctors associated with this patient
    self.appointments.map {|appointment| appointment.doctor}.uniq 
  end

  def self.all
    #returns an array of all Patients
    @@all
  end

end
