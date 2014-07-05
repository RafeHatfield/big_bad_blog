source 'https://rubygems.org'
ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
gem 'bcrypt-ruby', '3.0.1'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.0'
gem 'jquery-rails', '2.2.1'
gem 'turbolinks'
gem 'devise', '~> 3.2'
gem 'figaro'
gem 'pg'
gem 'rack-cache'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'rubocop', require: false
  gem 'quiet_assets'
  gem 'meta_request'
  gem 'bullet'
  gem 'annotate'
  gem 'awesome_print'
  gem 'xray-rails'
  gem 'letter_opener'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spring'
  gem 'terminal-notifier-guard'
  gem 'progress_bar'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'byebug'
  gem 'faker'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'simplecov', require: false
  gem 'codeclimate-test-reporter', require: nil
  gem 'database_cleaner', '<= 1.0.1'
  gem 'email_spec'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'selenium-webdriver'
  gem 'headless'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
  gem 'rails_12factor', '0.0.2'
  gem 'unicorn'
end
