# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailler::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['app208135007@heroku.com'],
  :password => ENV['hr2disw54986'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}
