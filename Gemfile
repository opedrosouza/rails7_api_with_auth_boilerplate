# frozen_string_literal: true
source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4", ">= 7.0.4.2"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors"

gem "dotenv-rails", "~> 2.8", ">= 2.8.1"

gem "active_model_serializers", "~> 0.10.13"

group :development, :test do
  # Great Ruby debugging companion: pretty print Ruby objects to visualize their structure. Supports custom object formatting via plugins
  gem "awesome_print", "~> 1.9", ">= 1.9.2"
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]
  # factory_bot_rails provides integration between factory_bot and rails 5.0 or newer
  gem "factory_bot_rails", "~> 6.2"
  # Faker, a port of Data::Faker from Perl, is used to easily generate fake data: names, addresses, phone numbers, etc.
  gem "faker", "~> 3.1", ">= 3.1.1"
  # Automatic Rails code style checking tool. A RuboCop extension focused on enforcing Rails best practices and coding conventions.
  gem "rubocop-rails", "~> 2.19"
  # Code style checking for RSpec files. A plugin for the RuboCop code style enforcing & linting tool.
  gem "rubocop-rspec", "~> 2.18", ">= 2.18.1"
  # A collection of RuboCop cops to check for performance optimizations in Ruby code.
  gem "rubocop-performance", "~> 1.16"
end

group :test do
  # Strategies for cleaning databases using ActiveRecord. Can be used to ensure a clean state for testing.
  gem "database_cleaner-active_record", "~> 2.1"
  # rspec-rails is a testing framework for Rails 5+.
  gem "rspec-rails", "~> 6.0", ">= 6.0.1"
  # Shoulda Matchers provides RSpec- and Minitest-compatible one-liners to test common Rails functionality that,
  # if written by hand, would be much longer, more complex, and error-prone.
  gem "shoulda-matchers", "~> 5.3"
  # Code coverage for Ruby with a powerful configuration library and automatic merging of coverage across test suites
  gem "simplecov", "~> 0.22.0"
end

group :development do
  # Annotates Rails/ActiveRecord Models, routes, fixtures, and others based on the database schema.
  gem "annotate", "~> 3.2"
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "spring"
end
