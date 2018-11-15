# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
config.mailjet_mailer.default_url_options = { host: 'localhost' }