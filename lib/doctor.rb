class Doctor 
    @@all=[]
    attr_accessor :name 
    def initialize(name)
        @name = name
        @@all << self  
    end

    def new_appointment(date,patient)
       new_appointment = Appointment.new(name,patient,self) 
       new_appointment 
    end

    def appointments
        Appointment.all.select{|appointment|appointment.doctor == self}
    end

    def self.all
        @@all
    end

    def patients
        appointments.collect{|appointment|appointment.patient}
    end 
end
