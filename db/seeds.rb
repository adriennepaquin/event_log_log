# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying data"
Log.destroy_all
Log.reset_pk_sequence

Log.create!(src: "10.39.39.1", dst: "4.5.6.7")
Log.create!(src: "10.39.39.1", dst: "4.5.6.7")
Log.create!(src: "10.39.39.1", dst: "4.5.6.7")
Log.create!(src: "10.39.39.1", dst: "4.5.6.7")
Log.create!(src: "10.39.39.1", dst: "4.5.6.7")
Log.create!(src: "10.39.39.1", dst: "4.5.6.7")

puts "created #{Log.count} logs"