# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Category.destroy_all
User.destroy_all
ListingType.destroy_all
TimeUnit.destroy_all


puts 'destroyed'
puts 'creating  users'
User.create(email: 'maor@maor.com', password: '123123')
User.create(email: 'roni@roni.com', password: '123123')
puts 'users created'

puts 'listing types creating'
sale = ListingType.new(name: 'Sale')
rent = ListingType.new(name:'Rent')
auction = ListingType.new(name: 'Auction')
puts 'listing types created'

puts 'time units creating'

min = TimeUnit.new(name: 'Minute')
hour = TimeUnit.new(name: 'Hour')
day = TimeUnit.new(name: 'Day')
week = TimeUnit.new(name: 'Week')
month = TimeUnit.new(name: 'Month')
year = TimeUnit.new(name: 'Year')

puts 'time units created'






puts 'categories creating'
clothes = Category.create(name: 'Clothes')
furniture = Category.create(name: 'Furniture')
groceries = Category.create(name: 'Groceries')
electronics = Category.create(name: 'Electronics')
puts 'categoris created'

rug = Item.new(user_id: 1,title: 'rug', description: 100, location: 'tel aviv')
rug.category = clothes
rug.save
bowl = Item.new(user_id: 1,title: 'bowl', description: 20.95, location: 'tel aviv')
bowl.category = furniture
bowl.save
pillow = Item.new(user_id: 1,title: 'pillow', description: 90, location: 'tel aviv')
pillow.category = clothes
pillow.save
light = Item.new(user_id: 1,title: 'light', description: 10.95, location: 'tel aviv')
light.category = electronics
light.save


puts 'items created'
