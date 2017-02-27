# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.destroy_all
Rating.destroy_all


tokyo = City.create!(name: "Tokyo", country: "Japan", photo: "http://www.telegraph.co.uk/content/dam/Travel/Destinations/Asia/Japan/Tokyo/Tokyo---CB-guide---Skyline-large.jpg")

ratings = Rating.create!([{username: "#", overall_rating: "#", safety_rating: "#", comment: "#", recommendations: , user_photo: "#", city_id: city.id}])


# next step is to build out views index then
# in console drop db, create db, migrate db, and seed db and test to see if this works rails s.
