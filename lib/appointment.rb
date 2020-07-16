class Appointment
  attr_reader :date, :doctor, :patient

  @@all = []

  def self.all
    @@all
  end

  def initialize(doctor, patient, date)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end
end
