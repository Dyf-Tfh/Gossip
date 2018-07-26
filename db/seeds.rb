# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
5.times do 
  City.create(name: Faker::Address.city, postal_code: rand(1..99999))
end
10.times do |index|
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: index, email: Faker::Internet.email, age: rand(1..100), city_id: City.all.sample.id)
end
10.times do
  Tag.create(title: Faker::Coffee.variety)
end
15.times do
  truc = Ragot.create!(title: Faker::Color.color_name, content: Faker::Color.hsla_color, user_id: User.all.sample.id)
  2.times do
    truc.tags.push(Tag.all.sample)
  end
end

20.times do 
  Comment.create(content: Faker::Coffee.notes, user_id: User.all.sample.id, ragot_id: Ragot.all.sample.id)
end

30.times do
  Like.create(user_id: User.all.sample.id, ragot_id: Ragot.all.sample.id)
end