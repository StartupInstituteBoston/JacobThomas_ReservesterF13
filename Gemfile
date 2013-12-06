source 'https://rubygems.org'
ruby '2.0.0'


group :production do 
  gem 'rails_12factor'
  gem 'pg'
end

group :development, :test do 
  gem 'mysql2'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'dotenv-rails'
  gem 'mailcatcher'
end

group :test do 
  gem 'factory_girl_rails'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'meta_request'
  gem 'simplecov'
  gem 'database_cleaner'
  gem 'capybara'
end

group :doc do
  gem 'sdoc', require: false
end

#Background processes 
gem "resque", "~> 2.0.0.pre.1", github: "resque/resque"
gem 'redis-rails'
gem 'resque_mailer'

#Recaptcha validations
gem "recaptcha", :require => "recaptcha/rails"

#Client-side validation
gem "parsley-rails"

#AUTH
gem 'devise'

#Maps
gem 'geocoder'
gem 'gmaps4rails'



gem 'unf'
gem 'fog'
gem 'rmagick'
gem 'carrierwave'
gem 'less-rails'
gem 'therubyracer'
gem 'twitter-bootstrap-rails'
gem 'rails', '4.0.0'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'
#gem 'turbolinks'
#gem 'jquery-turbolinks'


#configitron

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
