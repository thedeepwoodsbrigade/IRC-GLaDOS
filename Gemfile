source 'https://rubygems.org'

gem 'rails', '3.2.8'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass'
end

gem 'coffee-filter'
gem 'haml_coffee_assets'
gem 'execjs'

# http://collectiveidea.com/blog/archives/2010/11/29/ssl-with-rails/
gem 'rack-ssl'

gem 'jquery-rails'

gem 'haml'
gem 'haml-rails'
gem 'mongoid', '~>3.0'
gem 'dynamic_form'

gem 'therubyracer'

gem 'airbrake'

gem 'formatize'
gem 'escape_utils'
gem 'stringex'
gem 'will_paginate', '~> 3.0.2'

group :production do
  gem 'puma'
  gem 'newrelic_rpm', '3.4.1'
  ruby '1.9.3'
end

group :development do
  gem 'heroku'
  gem 'taps'
  gem 'puma'
end

group :test, :development do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'mongoid-rspec'
  gem 'timecop'
  gem 'vcr'
  gem 'fakeweb'
  gem 'email_spec' 
  gem 'rack_session_access'
  gem 'pry'
  gem 'pry-nav'

  # Pretty printed test output
  gem 'turn', require: false
end

