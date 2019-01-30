# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |index|
  user = User.create!(first_name: Faker::Company.name, last_name: Faker::Name.last_name, email: "email#{index}@example.com")
end

5.times do
 category = Category.create!(name: Faker::LordOfTheRings.character)
end

10.times do |index|
  article = Article.create!(title: Faker::Company.name, content: Faker::Shakespeare.hamlet_quote, user_id: index + 1, category_id: rand(1..5))
end

15.times do
 comment = Comment.create!(content: Faker::Shakespeare.hamlet_quote, user_id: rand(1..10), article_id: rand(1...10))
end

15.times do
 like = Like.create!(user_id: rand(1..10), article_id: rand(1...10))
end