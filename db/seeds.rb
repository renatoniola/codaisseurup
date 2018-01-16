# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

renato = User.create!(
  email: 'demo@demo.com',
  password: 'demodemo'
)

Event.create!(
  name: "partyyy",
  description: "a great party brooo",
  location: "amsterdam",
  price: 20.0,
  capacity: 300,
  includes_food: true,
  includes_drinks: false,
  starts_at: Time.now,
  ends_at: 2.days.from_now,
  active: true,
  user: renato
)
