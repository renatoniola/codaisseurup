# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

Photo.destroy_all

Event.destroy_all
Profile.destroy_all
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



event_1 = Event.create!(
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
event_2 = Event.create!(
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
event_3 = Event.create!(
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
event_4 = Event.create!(
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

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/renatos/image/upload/v1516278362/iamges_qvkupg.jpg", event: event_1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/renatos/image/upload/v1516278362/iamges2_cupdls.jpg", event: event_2)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/renatos/image/upload/v1516278362/iamges6_yra9bc.jpg", event: event_4)
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/renatos/image/upload/v1516278362/iamges8_jk9pj1.jpg", event: event_3)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/renatos/image/upload/v1516278362/iamges99_dtmcm3.jpg", event: event_4)
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/renatos/image/upload/v1516278362/iamges4_woriyv.jpg", event: event_2)
photo7 = Photo.create!(remote_image_url: "http://res.cloudinary.com/renatos/image/upload/v1516278362/iamges7_qtpkp5.jpg", event: event_3)
