# logs the event updates
set :output, 'log/cron.log'

set :environment, 'development'

every 1.day, :at => '12:00 am' do
  rake "locals:events:update"
end

every 4.hours do
  rake "locals:events:pull"
end
