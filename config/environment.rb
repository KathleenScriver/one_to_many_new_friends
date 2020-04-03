require 'pry'

require_relative '../lib/doctor'
require_relative '../lib/appointment'

bob = Doctor.new("Dr. Bob", "Generalist")
who = Doctor.new("Dr. Who", "Surgeon")

apt1 = Appointment.new("11 am", "12/13/2020", bob)
apt2 = Appointment.new("noon", "5/3/2020", who)
apt3 = Appointment.new("2 pm", "4/5/2020", who)

binding.pry

bob.name

Doctor.all
#=> list the array of all the 
#    doctor instances

Doctor.names
#=> an array of all the doctor's names

Appointment.doctors
#=> return an array of all doctors names from 
# the appointments