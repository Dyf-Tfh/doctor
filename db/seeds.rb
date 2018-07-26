# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
2.times do
  City.create(name: "woof")
end
10.times do 
  Speciality.create(name: Faker::Job.field)
end
5.times do
  lel =Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: 75001, city_id: City.all.sample.id)
  lel.specialities.push(Speciality.all.sample)
  lel.save
end
10.times do
  Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end

15.times do
  Appointment.create!(patient_id: rand(1..5), doctor_id: rand(1..2), date: Faker::Date.forward(23), city_id: City.all.sample.id)
end
