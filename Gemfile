source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# I18n
gem 'rails-i18n'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.3.13'
# Manage Procfile-based applications http://ddollar.github.com/foreman
gem 'foreman'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Better error page for Rack apps
  gem "better_errors"
  # Optional gem for better_errors
  gem "binding_of_caller"

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Generate Entity-Relationship Diagrams for Rails applications http://voormedia.github.io/rails-erd/
  gem 'rails-erd'
end

# Flexible authentication solution for Rails with Warden. 
gem 'devise'
# Translations for the devise gem
gem 'devise-i18n'
# Rails gem of the Bootstrap based admin theme SB Admin 2.
# TODO: Check if there is a possible way to force bootstrap_sb_admin_base_v2 to use font awesome 5 instead of 4.7.0.5 
# bootstrap_sb_admin_base_v2 views is using FA 5 syntax (fas), but the installed version is 4.7 (uses fa syntax)
gem 'bootstrap_sb_admin_base_v2'
gem 'rails-assets-bootstrap', '4.3.1', source: 'https://rails-assets.org'
gem 'rails-assets-notifyjs', '0.4.2', source: 'https://rails-assets.org'
# A library for generating fake data such as names, addresses, and phone numbers.
gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
