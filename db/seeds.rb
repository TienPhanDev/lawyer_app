# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
User.destroy_all
Request.destroy_all

#Clients
15.times do 
  User.create(
    name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: Faker::PhoneNumber.phone_number
  )
end

#Lawyers
15.times do 
  User.create(
    name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: Faker::PhoneNumber.phone_number,
    state: "MD",
    years_experience: rand(5..20),
    lawyer: true
  )
end

injury_arr = %w[broken-leg broken-arm sprained-wrist sprained-elbow brain-damage fractured-skull broken-back emotional-trauma]

#Requests
10.times do 
  Request.create(
    title: Faker::Lorem.word,
    date: Faker::Date.in_date_period,
    injury: injury_arr.sample,
    damages: rand(1000..10000),
    description: Faker::Lorem.paragraph(sentence_count: 5),
    police_report?: [true, false].sample,
    client_id: User.clients.sample.id,
    lawyer_id: User.lawyers.sample.id
  )
end

