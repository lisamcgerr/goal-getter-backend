# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Goal.destroy_all

User.create(username: 'lisas_learning', 
            password: 'coding' )

Goal.create(
        description: 'Train for Half Marathon - 2 hours 2 minute goal time',
        days: 2,
        user_id: 1
)

Goal.create(
    description: 'Complete 100 days of Coding',
    days: 0,
    user_id: 1
)

Goal.create(
    description: 'Study Italian for 30 minutes a day',
    days: 10,
    user_id: 1
)

puts "after successfully seeding..."
puts "#{User.all.count} users"
puts "#{Goal.all.count} goals"