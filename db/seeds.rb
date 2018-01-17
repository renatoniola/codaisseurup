# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
User.destroy_all

renato = User.create!(
  email: 'renato@demo.com',
  password: 'demodemo'
)
sarah = User.create!(
  email: 'sarah@demo.com',
  password: 'demodemo'
)
tom = User.create!(
  email: 'tom@demo.com',
  password: 'demodemo'
)

funtime = Category.create(name: 'funtime')
sport = Category.create(name: 'sport')
dancing = Category.create(name: 'dancing')
tech = Category.create(name: 'tech')
music = Category.create(name: 'music')
film = Category.create(name: 'film')


Event.create!(
  name: "partyyy renato 1",
  description: "a great party brooo",
  location: "amsterdam",
  price: 20.0,
  capacity: 300,
  includes_food: true,
  includes_drinks: false,
  starts_at: Time.now,
  ends_at: 2.days.from_now,
  active: true,
  user: renato,
  categories: [tech,music,film]
)
Event.create!(
  name: "partyyy renato 2",
  description: "a great party brooo",
  location: "amsterdam",
  price: 20.0,
  capacity: 300,
  includes_food: true,
  includes_drinks: false,
  starts_at: Time.now,
  ends_at: 2.days.from_now,
  active: true,
  user: renato,
  categories: [tech,music,film]
)
Event.create!(
  name: "partyyy2",
  description: "a great party brooo",
  location: "amsterdam",
  price: 20.0,
  capacity: 300,
  includes_food: true,
  includes_drinks: false,
  starts_at: Time.now,
  ends_at: 2.days.from_now,
  active: true,
  user: sarah,
  categories: [music,dancing]
)
Event.create!(
  name: "partyyy3",
  description: "a great party brooo",
  location: "amsterdam",
  price: 20.0,
  capacity: 300,
  includes_food: true,
  includes_drinks: false,
  starts_at: Time.now,
  ends_at: 2.days.from_now,
  active: true,
  user: tom,
  categories: [funtime,sport,film,dancing]
)
