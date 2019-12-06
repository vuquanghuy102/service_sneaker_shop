# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Product.destroy_all

["Nike","Adidas"].each do |name|
  Category.create name: name
end

Product.create(
  name: "Nike 1",
  category_id: "1",
  price: 200000 ,
  active: 1
)

Product.create(
  name: "Nike 2",
  category_id: "1",
  price: 300000,
  active: 1
)

Product.create(
  name: "Adidas 1",
  category_id: "2",
  price: 250000 ,
  active: 1
)

Product.create(
  name: "Adidas 1",
  category_id: "2",
  price: 250000 ,
  active: 1
)