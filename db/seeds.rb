require 'faker'

User.create({
  first_name: 'J',
  last_name: 'Smith',
  email: 'j@smith.com',
  password: '1234'
  })

10.times do
  User.create({
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Name.last_name
  })
end