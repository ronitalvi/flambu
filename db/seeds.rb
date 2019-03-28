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
sale = ListingType.create(name: 'Sale')
rent = ListingType.create(name:'Rent')
auction = ListingType.create(name: 'Auction')
puts 'listing types created'

puts 'time units creating'

min = TimeUnit.create(name: 'Minute')
hour = TimeUnit.create(name: 'Hour')
day = TimeUnit.create(name: 'Day')
week = TimeUnit.create(name: 'Week')
month = TimeUnit.create(name: 'Month')
year = TimeUnit.create(name: 'Year')

puts 'time units created'






puts 'categories creating'
clothes = Category.create(name: 'Clothes')
furniture = Category.create(name: 'Furniture')
groceries = Category.create(name: 'Groceries')
electronics = Category.create(name: 'Electronics')
puts 'categoris created'

puts 'items creating'


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
