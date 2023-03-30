# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# rails rails db:reset rails db:seed
#(To reset database and have the id starting from 1)

Item.destroy_all
List.destroy_all
User.destroy_all

User.create(email: "omair@gmail.com", password: "123456", first_name: "Omair", last_name: "Qu", address: "7 Marylands Rd, London")
User.create(email: "oznur@gmail.com", password: "123456", first_name: "Oznur", last_name: "Ar", address: "Downfield Cl, London")
User.create(email: "alex@gmail.com", password: "123456", first_name: "Alex", last_name: "Ab", address: "3 Downfield Cl, London")
User.create(email: "Bob@gmail.com", password: "123456", first_name: "Bob", last_name: "AR" )
User.create(email: "John@gmail.com", password: "123456", first_name: "John", last_name: "CW" )
User.create(email: "Derrik@gmail.com", password: "123456", first_name: "Derrik", last_name: "KL", address: "Sutherland Ave 17, London")
User.create(email: "Abb@gmail.com", password: "123456", first_name: "Abb", last_name: "MO", address: "Sutherland Ave 19, London")
User.create(email: "James@gmail.com", password: "123456", first_name: "James", last_name: "Ro", address: "Amberley Rd 69, London")
User.create(email: "George@gmail.com", password: "123456", first_name: "George", last_name: "Lm", address: "Amberley Rd 69, London")

List.create(user_id: 1, status: "pending")
List.create(user_id: 2, status: "pending")
List.create(user_id: 3, status: "pending")
List.create(user_id: 4, status: "pending")
List.create(user_id: 5, status: "pending")
List.create(user_id: 6, status: "pending")
List.create(user_id: 7, status: "pending")
List.create(user_id: 8, status: "pending")
List.create(user_id: 9, status: "pending")


Item.create(name: "Pasta", description: "Wholemeal Pasta", list_id: 1)
Item.create(name: "Toothpaste", description: "Colgate", list_id: 2)
Item.create(name: "Apples", description: "Red apples", list_id: 3)
Item.create(name: "Oranges", description: "Easy peeler", list_id: 4)
Item.create(name: "Spices", description: "Marination spices", list_id: 5)
Item.create(name: "Flour", description: "Wholemeal", list_id: 6)
Item.create(name: "Bread", description: "Seeded bread", list_id: 7)
Item.create(name: "Oil", description: "Olive oil", list_id: 8)
Item.create(name: "Paracetamol", description: "Any brand", list_id: 9)
Item.create(name: "Garlic", description: "Cloves", list_id: 1)
Item.create(name: "Tomatoes", description: "Plum tomatoes", list_id: 2)
Item.create(name: "Ginger", description: "Powder", list_id: 3)
Item.create(name: "Onions", description: "Red onions", list_id: 4)
Item.create(name: "Meat", description: "Red meat", list_id: 5)
Item.create(name: "Mix Vegetables", description: "Frozen vegetables", list_id: 3)
Item.create(name: "Salt", description: "1 packet", list_id: 6)
Item.create(name: "Butter", description: "Clover", list_id: 7)
Item.create(name: "Yogurt", description: "Full fat", list_id: 8)
Item.create(name: "Milk", description: "Full fat", list_id: 9)
Item.create(name: "Cheese", description: "Mozarilla", list_id: 1)
Item.create(name: "Tooth brush", description: "Oral-B", list_id: 3)
Item.create(name: "chocolates", description: "Dark chocolate", list_id: 5)
Item.create(name: "Cereal", description: "Corn flakes", list_id: 7)
Item.create(name: "Fries", description: "frozen fries", list_id: 9)
Item.create(name: "Fish", description: "Salmon", list_id: 6)
Item.create(name: "Ice cream", description: "Any flavour", list_id: 5)
Item.create(name: "Shampoo", description: "Loreal", list_id: 3)

Chatroom.destroy_all

Chatroom.create(name: "iNeed Chat")
Chatroom.create(name: "iNeed Chat")
Chatroom.create(name: "iNeed Chat")
Chatroom.create(name: "iNeed Chat")
Chatroom.create(name: "iNeed Chat")
Chatroom.create(name: "iNeed Chat")
Chatroom.create(name: "iNeed Chat")

ChatroomUser.destroy_all

ChatroomUser.create(chatroom_id: 1, user_id: 1)
ChatroomUser.create(chatroom_id: 1, user_id: 2)
ChatroomUser.create(chatroom_id: 2, user_id: 3)
ChatroomUser.create(chatroom_id: 2, user_id: 4)
ChatroomUser.create(chatroom_id: 3, user_id: 5)
ChatroomUser.create(chatroom_id: 3, user_id: 6)
ChatroomUser.create(chatroom_id: 4, user_id: 7)
ChatroomUser.create(chatroom_id: 4, user_id: 8)
ChatroomUser.create(chatroom_id: 5, user_id: 9)
ChatroomUser.create(chatroom_id: 5, user_id: 1)

Message.destroy_all

Message.create(content: "Hello", chatroom_id: 1, user_id: 1)
Message.create(content: "How are you", chatroom_id: 1, user_id: 1)
Message.create(content: "Are you fine?", chatroom_id: 2, user_id: 3)
Message.create(content: "How's everything going?", chatroom_id: 2, user_id: 4)
Message.create(content: "Hello", chatroom_id: 3, user_id: 5)
Message.create(content: "How are you", chatroom_id: 3, user_id: 6)
Message.create(content: "Are you fine?", chatroom_id: 4, user_id: 7)
Message.create(content: "How's everything going?", chatroom_id: 4, user_id: 8)

SharedList.destroy_all

SharedList.create(list_id:1, user_id:2)
SharedList.create(list_id:1, user_id:3)
SharedList.create(list_id:1, user_id:6)
SharedList.create(list_id:2, user_id:1)
SharedList.create(list_id:2, user_id:3)
SharedList.create(list_id:2, user_id:5)
SharedList.create(list_id:3, user_id:1)
SharedList.create(list_id:3, user_id:2)
SharedList.create(list_id:3, user_id:4)
SharedList.create(list_id:4, user_id:1)
SharedList.create(list_id:5, user_id:2)
SharedList.create(list_id:5, user_id:3)
SharedList.create(list_id:5, user_id:1)
SharedList.create(list_id:6, user_id:2)
SharedList.create(list_id:6, user_id:3)
SharedList.create(list_id:6, user_id:1)
SharedList.create(list_id:7, user_id:2)
SharedList.create(list_id:7, user_id:3)
SharedList.create(list_id:7, user_id:1)
