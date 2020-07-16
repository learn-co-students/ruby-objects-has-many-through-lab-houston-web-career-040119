class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient,date)
    #given a date and a patient, creates a new appointment
    Appointment.new(date,patient,self)
  end

  def appointments
    #returns an array of all apointments scheduled for the doctor
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    #returns a unique array of all patients being treated by the docotr
    self.appointments.map {|appointment| appointment.patient}.uniq
  end

  def self.all
    #returns an array of all docotrs
    @@all
  end

end
