# logs the event updates
set :output, 'log/cron.log'
# whenevr defaults to production environment so i set it to development for the time being
set :environment, 'development'
# updates events every day
every 1.day, :at => '12:00 am' do
  rake "locals:events:update"
end
