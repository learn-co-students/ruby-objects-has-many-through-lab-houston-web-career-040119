class Appointment
#Appointment is to be our joining class because
#    An appointment can have many doctors
#    An appointment can have many paitnets

  attr_accessor :date, :doctor, :patient

  @@all = []

  def initialize (date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    #returns an array of all appointments
    @@all
  end

end
