# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
User.destroy_all
Request.destroy_all
=begin
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
    police_report: [true, false].sample,
    client_id: User.clients.sample.id
  )
  end

=end

  # Clients

  User.create(
    name: "Mickey Mouse",
    email: "mickeymouse@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(202)123-4567"
  )
  User.create(
    name: "Minnie Mouse",
    email: "minniemouse@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(202)649-3078"
  )
  User.create(
    name: "Donald Duck",
    email: "donaldduck@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(703)123-4567"
  )
  User.create(
    name: "Scrooge Mcduck",
    email: "scroogemcduck@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(703)259-0023"
  )
  User.create(
    name: "Daisy Duck",
    email: "daisyduck@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(202)123-4567"
  )
  User.create(
    name: "Goofy Goof",
    email: "goofygoof@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(301)479-3641"
  )
  User.create(
    name: "Winnie Pooh",
    email: "winniepooh@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(240)123-0023"
  )
  User.create(
    name: "Piglet",
    email: "piglet@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(703)987-4567"
  )
  User.create(
    name: "Roo",
    email: "roo@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(571)123-4567"
  )
  User.create(
    name: "Eeyore",
    email: "eeyore@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(202)619-4567"
  )

  # Lawyers

  User.create(
    name: "Lionel Hutz",
    email: "lawyer1@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(202)619-4567",
    state: "Maryland/Virginia",
    years_experience: rand(3..30),
    lawyer: true
  )
  User.create(
    name: "Batman",
    email: "lawyer2@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(571)123-4567",
    state: "Maryland",
    years_experience: rand(3..30),
    lawyer: true
  )
  User.create(
    name: "Spiderman",
    email: "lawyer3@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(240)123-0023",
    state: "Maryland",
    years_experience: rand(3..30),
    lawyer: true
  )
  User.create(
    name: "Superman",
    email: "lawyer4@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(571)123-4567",
    state: "Maryland",
    years_experience: rand(3..30),
    lawyer: true
  )
  User.create(
    name: "Captain America",
    email: "lawyer5@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(703)123-4567",
    state: "Maryland",
    years_experience: rand(3..30),
    lawyer: true
  )
  User.create(
    name: "Black Panther",
    email: "lawyer6@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(202)619-4567",
    state: "Maryland",
    years_experience: rand(3..30),
    lawyer: true
  )
  User.create(
    name: "Black Widow",
    email: "lawyer7@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(571)123-4567",
    state: "Maryland",
    years_experience: rand(3..30),
    lawyer: true
  )
  User.create(
    name: "Iron Man",
    email: "lawyer8@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(240)123-0023",
    state: "Maryland",
    years_experience: rand(3..30),
    lawyer: true
  )
  User.create(
    name: "Wonder Woman",
    email: "lawyer9@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(571)123-4567",
    state: "Maryland",
    years_experience: rand(3..30),
    lawyer: true
  )
  User.create(
    name: "The Hulk",
    email: "lawyer10@app.com",
    password: 'foobar',
    password_confirmation: 'foobar',
    phone_number: "(703)123-4567",
    state: "Maryland",
    years_experience: rand(3..30),
    lawyer: true
  )
  
  injury_arr = %w[broken-leg broken-arm sprained-wrist sprained-elbow brain-damage fractured-skull broken-back emotional-trauma]

  # Requests

  10.times do 
  Request.create(
    title: Faker::TvShows::Simpsons.quote,
    date: Faker::Date.in_date_period,
    injury: injury_arr.sample,
    damages: rand(500..10000),
    description: Faker::Lorem.paragraph(sentence_count: 5),
    police_report: [true, false].sample,
    client_id: User.clients.sample.id
  )
  end