# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

categories = ["Flip Floppers", "Crank Knobbers", "Wind Riders", "Spin Sliders", "Tip Toppers"]

5.times do
  category = categories.sample
  category = Category.new(name: category,
                          description: Faker::Company.catch_phrase)
  category.save
end

20.times do
  rand_cat = rand(1...5)
  gadget = Gadget.new(name: Faker::Commerce.product_name,
                      description: Faker::Company.catch_phrase,
                      category_id:  rand_cat)
  gadget.save
end

mj = User.new(email: 'mwjordan9@live.com',
              password: 'password')
mj.save

puts "#{Category.count} categories created."
puts "#{Gadget.count} gadgets created."
puts "#{User.count} user created."