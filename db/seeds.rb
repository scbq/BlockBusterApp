# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do
  Cliente.create(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end

20.times do
  Pelicula.create(
    title: Faker::Movie.title,
    genre: Faker::Book.genre,
    year: rand(1950..2023),
    cliente: Cliente.all.sample
  )
end
