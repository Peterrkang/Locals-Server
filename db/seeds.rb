# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "lmnop", password: "123")
User.create(email: "peas", password: "123")
Event.create(title: "RockClimb", description: "Climb The World", address: "Anaheim, CA", lat: "33.835293",
lng: "-117.914505", user_id: 1, showInfo: false)
Event.create(title: "Swim", description: "Swim Now", address: "Cerritos, CA", lat: "33.8583",
lng: "118.0648", user_id: 2, showInfo: false)
ChatRoom.create(user_id: 1, event_id: 1, title: "RockClimb")
ChatRoom.create(user_id: 2, event_id: 2, title: "Swim Now")

Message.create(user_id:1, chat_room_id:1, content:"Hey!", user_email: "lmnop")
Message.create(user_id:2, chat_room_id:1, content:"Hey!", user_email: "peas")
Message.create(user_id:1, chat_room_id:1, content:"How You Been?", user_email: "lmnop")
Message.create(user_id:2, chat_room_id:1, content:"Me Chillin, Hbu?", user_email: "lmnop")
