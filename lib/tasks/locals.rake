namespace :locals do
  namespace :events do
    desc 'Update events'
    task update: :environment do
      # check if there are already events made
      Event.where('created_at < ?', Time.new - 4.hours).destroy_all
    end
  end
end
