# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating 7 movies...'

# Creating movies using faker gem
7.times do
  Movie.create(name: Faker::Movie.title, synopsis: Faker::Movie.quote, director: Faker::Name.name)
end

puts 'Creating 7 series...'
# Creating series using faker gem
7.times do
  Serie.create(name: Faker::Movie.title, synopsis: Faker::Movie.quote, director: Faker::Name.name)
end

puts 'Creating 7 documentary films...'
# Creating documentary films using faker gem
7.times do
  DocumentaryFilm.create(name: Faker::Movie.title, synopsis: Faker::Movie.quote, director: Faker::Name.name)
end
