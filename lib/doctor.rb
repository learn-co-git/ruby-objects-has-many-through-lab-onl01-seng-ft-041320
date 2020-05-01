class Doctor
  attr_accessor :name, :appointment, :patient, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)

  end


  def patients
      Appointment.all.collect do |appointment|
        if appointment.doctor == self
          appointment.patient
        end
      end
        #Binding.pry
  end



end