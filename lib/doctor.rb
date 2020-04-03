class Doctor
    attr_reader :name, :speciality

    @@all = []

    def initialize(name, speciality)
        @name = name
        @speciality = speciality
        @@all << self
    end

    def self.all
        @@all
    end

    def self.names
        all.map do |doctor|
            doctor.name
        end
    end
end

