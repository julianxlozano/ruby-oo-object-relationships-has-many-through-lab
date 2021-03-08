class Patient 
    @@all=[]
    attr_accessor :name 

    def initialize(name)
        @name = name
        @@all << self 
    end

    def new_appointment(date,doctor)
       new_patient_appointment = Appointment.new(date,self,doctor)
        new_patient_appointment
    end

    def appointments
        Appointment.all.select{|appointment|appointment.patient == self}
    end 

    def doctors
        appointments.collect{|appointment|appointment.doctor}
    end 
    def self.all
        @@all 
    end
end
