# -*- ruby -*-
source 'https://rubygems.org'

#ruby '2.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

gem 'pg'

gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'carrierwave', github: 'carrierwaveuploader/carrierwave'
gem 'mini_magick', '~> 4.0'
gem 'kaminari', '~> 0.16.0'
gem 'rails-i18n'
gem 'simple_form'
gem 'dotenv-rails', groups: [:development, :test]
gem 'puma'
gem 'guard-rspec', require: false, group: :development

group :development, :test do
  gem 'byebug'
  gem 'pry-rails'
  gem 'pry-git'
  gem 'quiet_assets'
  gem 'spring'
  gem 'web-console', '~> 2.0'
end

# test
group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails', '~> 4.5'
end

# assets

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
# gem 'therubyracer', platforms: :ruby
# gem 'jquery-rails'

source 'https://rails-assets.org' do
  gem 'rails-assets-normalize-scss';
end
