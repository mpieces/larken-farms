# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Larken::Application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "localhost:3000",
    authentication: "plain",
    user_name: "mer0522",
    password: "dakota22",
    enable_starttls_auto: true
}
end
