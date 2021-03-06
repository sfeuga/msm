# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'devise', '~> 4.7', '>= 4.7.3'
gem 'faker', '~> 2.14'
gem 'font-awesome-sass', '~> 5.15', '>= 5.15.1'
gem 'friendly_id', '~> 5.4'
gem 'haml-rails', '~> 2.0'
gem 'jbuilder', '~> 2.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
gem 'sass-rails', '>= 6'
gem 'simple_form', '~> 5.0', '>= 5.0.3'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 11.1', '>= 11.1.3', platforms: %i[mri mingw x64_mingw]
  gem 'haml_lint', '~> 0.36.0'
  gem 'reek', '~> 6.0', '>= 6.0.2'
  gem 'rubocop', '~> 0.93.1'
  gem 'rubocop-i18n', '~> 2.0', '>= 2.0.2'
  gem 'rubocop-performance', '~> 1.8', '>= 1.8.1'
  gem 'rubocop-rails', '~> 2.8', '>= 2.8.1'
  gem 'rubocop-thread_safety', '~> 0.4.1'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end
