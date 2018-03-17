require "pry"

class Doctor

  attr_accessor :name, :appointments

  def initialize(name)
      @name = name
      @appointments = []
  end

  def add_appointment(appointment)

    @appointments << appointment
    appointment.doctor = self

    #takes in instance of Appointment class
    #adds that appointment to @appointments
    #tell that appointment it belongs to that doctor
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |patient|
      patient.patient 
    end
    #iterates over @appointments
    #collects the patient that belongs to each appointment
  end

end
