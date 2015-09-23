set :output, '../log/cron_log.log'

every 1.minutes do
  rake 'db:seed' if Rails.env.production?
end
