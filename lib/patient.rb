class Patient
  attr_accessor :name, :appointment, :patient, :doctor, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
      new_appointment = Appointment.new(date, self, doctor)
      #binding.pry
  end

  def appointments
      Appointment.all.select do |appointment|
        if appointment.patient == self
          appointment
        end
      end
  end

  def doctors
    Appointment.all.collect do |appointment|
      if appointment.patient == self
        appointment.doctor
      end
    end
  end

end