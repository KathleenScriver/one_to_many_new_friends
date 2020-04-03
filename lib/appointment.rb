class Appointment
    attr_reader :time,
                :date,
                :doctor

    @@all = []

    def initialize(time, date, doctor)
        @time = time
        @date = date
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

    def self.doctors
        all.map do |appointment|
            appointment.doctor.name
        end.uniq
    end
end