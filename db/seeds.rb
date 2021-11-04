# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying data"
Comment.destroy_all
Comment.reset_pk_sequence
Log.destroy_all
Log.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence

User.create!(name: "Adrienne")
User.create!(name: "Catherine")
User.create!(name: "Paul")

puts "created #{User.count} users"

6.times do
    Log.create!(src: "10.39.39.1", dst: "4.5.6.7")
end

puts "created #{Log.count} logs"

10.times do
    Comment.create!(user_id: rand(1..3), log_id: rand(1..6), comment: "great!")
end

puts "created #{Comment.count} comments"