namespace :locals do
  namespace :events do

    desc 'Update events'
    task update: :environment do
      events = Event.where('created_at < ?', Time.new - 4.hours)
      events.each do |event|
        chat = ChatRoom.find_by(event_id: event.id)
        chat.messages.destroy_all
        chat.destroy
      end
      events.destroy_all
    end

    desc 'Pull Events'
    task pull: :environment do
      event1 = Event.create(title: "RockClimb", description: "Climb The World", address: "Anaheim, CA", lat: "33.835293",
      lng: "-117.914505", user_id: 1)
      event2 = Event.create(title: "Swim", description: "Swim With Sharks", address: "Artesia, CA", lat: "33.8658484",
      lng: "-118.0831212", user_id: 2)
      chat1 = ChatRoom.create(user_id: 1, event_id: event1.id, title: "RockClimb")
      chat2 = ChatRoom.create(user_id: 2, event_id: event2.id, title: "Swim Now")
      Message.create(user_id:1, chat_room_id:chat1.id, content:"Hey!", user_email: "admin")
      Message.create(user_id:2, chat_room_id:chat1.id, content:"Hey!", user_email: "test")
      Message.create(user_id:1, chat_room_id:chat1.id, content:"How You Been?", user_email: "admin")
      Message.create(user_id:2, chat_room_id:chat1.id, content:"Me Chillin, Hbu?", user_email: "test")
      Message.create(user_id:1, chat_room_id:chat2.id, content:"Hey!", user_email: "admin")
      Message.create(user_id:2, chat_room_id:chat2.id, content:"Hey!", user_email: "test")
      Message.create(user_id:1, chat_room_id:chat2.id, content:"How You Been?", user_email: "admin")
      Message.create(user_id:2, chat_room_id:chat2.id, content:"Me Chillin, Hbu?", user_email: "test")
    end


  end
end
