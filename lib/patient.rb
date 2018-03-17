class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments =[]
  end

  def add_appointment(appointment)
    #adds appointment to @appointments
      @appointments << appointment
    #tell the appointment it belongs to his patient
      appointment.patient = self
    end

  def appointments
    @appointments
  end

  def doctors

    @appointments.collect do |doctor|
      doctor.doctor 
    end
    #iterates over that patients appointments
    #collects the doctor that each appointment belongs to
  end



end
