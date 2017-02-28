namespace :locals do
  namespace :events do
    desc 'Update events'
    task update: :environment do
      # check if there are already events made
      events = Event.where('created_at < ?', Time.new - 4.hours)
      events.each do |event|
        event.chat_room.destroy
      end
      events.destroy_all
    end
  end
end
