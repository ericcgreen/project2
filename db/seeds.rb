# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.destroy_all
Rating.destroy_all


tokyo = City.create!(name: "Tokyo", country: "Japan", photo: "https://vincentloy.files.wordpress.com/2008/12/tokyonight00263.jpg")

mark = User.create!(email: "me@gmail.com", password: "abc123")

tokyo_ratings = Rating.create!(overall_rating: "5", safety_rating: "5", comment: "Tokyo (東京, Tōkyō) is Japan's capital and the world's most populous metropolis. It is also one of Japan's 47 prefectures, consisting of 23 central city wards and multiple cities, towns and villages west of the city center. The Izu and Ogasawara Islands are also part of Tokyo.", recommendations: "Prior to 1868, Tokyo was known as Edo. A small castle town in the 16th century, Edo became Japan's political center in 1603 when Tokugawa Ieyasu established his feudal government there. A few decades later, Edo had grown into one of the world's most populous cities. With the Meiji Restoration of 1868, the emperor and capital moved from Kyoto to Edo, which was renamed Tokyo ("Eastern Capital"). Large parts of Tokyo were destroyed in the Great Kanto Earthquake of 1923 and in the air raids of 1945.", user_photo: "https://travel.gaijinpot.com/wp-content/uploads/sites/6/2016/08/Shinjuku-lead.jpg", city: tokyo, user: mark)




# next step is to build out views index then
# in console drop db, create db, migrate db, and seed db and test to see if this works rails s.
