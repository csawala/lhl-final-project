source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

## Image Upload & Processing
# Carrierwave allows for easier image uploading
gem 'carrierwave', '>= 1.0.0.rc', '< 2.0'
# MiniMagick will ONLY install if ImageMagick is already installed
# Confirm version using CLI:    convert -version
# MiniMagick will allow for adding multiple versions of image (e.g. scaled, thumbs, etc)
gem "mini_magick"


# Styling
gem 'font-awesome-rails'
gem 'materialize-sass'
gem 'flexbox-rails'

# Maps
gem 'geocoder'
# Next 2 gems for gmaps if/when using JS API
# ...lat/long included in organizations model
# gem 'gmaps4rails'
# gem 'underscore-rails'

# Authentication & security
# gem 'omniauth-facebook'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-rails'
  gem 'dotenv-rails'
  # Testing suite
  gem 'rspec-rails', '~> 3.5'
  gem 'capybara', '~> 2.5'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'awesome_print'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end