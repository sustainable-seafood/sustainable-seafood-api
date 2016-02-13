source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use postgresql as the database for Active Record
gem 'pg'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Code coverage analysis tool
gem 'simplecov', :require => false, :group => :test

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # fixtures replacement with a straightforward definition syntax
  gem 'factory_girl_rails'
  # Causes rails console to open pry
  gem 'pry-rails'
  # A testing framework for Rails
  gem 'rspec-rails', '~> 3.0'
  # Patch-level verification for Bundler ($ bundle-audit)
  gem 'bundler-audit', require: false
  # Pretty print your Ruby objects with style
  gem 'awesome_print'
  # Helps handle JSON in RSpec
  gem 'json_spec'
end

group :development do
  # Access an IRB console on exception pages
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background.
  gem 'spring', group: :development
  # Implements the rspec command for Spring
  gem 'spring-commands-rspec', group: :development
  # Better and more useful error page
  gem 'better_errors'
  # Checks for security vulnerabilities ($ brakeman)
  gem 'brakeman', :require => false
end

