# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:     "french",
    phone_number: "89 1230 123"
  },
  {
    name:         "The Croissant",
    address:      "4 rue Blainville 75005 Paris",
    category:     "french",
    phone_number: "89 1230 124123"
  },
  {
    name:         "Chinese Pizza",
    address:      "Pizza St, Paris",
    category:     "chinese",
    phone_number: "89 1230 3221"
  },
  {
    name:         "Mama Mia's Meatballs",
    address:      "Ronny the Rat Ave, Chicago",
    category:     "italian",
    phone_number: "89 1230 32123"
  },
  {
    name:         "Tony Macaroni's Cheeseballs",
    address:      "Samsung Street, Seoul, South Korea",
    category:     "italian",
    phone_number: "89 1230 231"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
