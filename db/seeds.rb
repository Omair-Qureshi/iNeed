# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

User.create(email: "omair@gmail.com", password: "123456", first_name: "Omair", last_name: "Qu")
User.create(email: "oznur@gmail.com", password: "123456", first_name: "Oznur", last_name: "Ar")
User.create(email: "alex@gmail.com", password: "123456", first_name: "Alex", last_name: "Ts")

List.destroy_all
List.create(user: User.first, status: "pending")
List.create(user_id: 2, status: "pending")
List.create(user_id: 3, status: "pending")

Item.destroy_all
Item.create(name: "Pasta", status: "pending", description: "Wholemeal Pasta", quantity: "1 packet", list: List.first)
Item.create(name: "Toothpaste", status: "pending", description: "Colgate", quantity: "1 packet", list_id: 2)
Item.create(name: "Apples", status: "pending", description: "Red apples", quantity: "1 packet", list_id: 3)
