source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :production do
  gem "pg", ">= 0.14.1"
end

group :development do
  gem 'sqlite3'
end

gem "haml-rails", ">= 0.4"
gem "html2haml", ">= 1.0.1", :group => :development
gem "bootstrap-sass", ">= 2.3.0.0"
gem "devise", ">= 2.2.3"
gem "simple_form", ">= 2.0.4"
gem "quiet_assets", ">= 1.0.1", :group => :development
gem "figaro", ">= 0.5.3"
gem "better_errors", ">= 0.6.0", :group => :development
gem "binding_of_caller", ">= 0.7.1", :group => :development, :platforms => [:mri_19, :rbx]
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]
gem "font-awesome-rails"
gem 'rails-assets-listjs'
gem 'RedCloth'
gem 'thin'
gem 'spork'
gem 'pry'
gem 'nested_form'
gem 'active_model_serializers'
gem 'inherited_resources'

group :test, :development do
  gem 'rspec-rails', '~> 2.0'
  gem 'factory_girl_rails', ">= 4.2.0"
  gem 'guard-rspec', "~> 0.7.0"
end

group :test do
  gem 'faker', '~> 1.0.1'
  gem 'capybara', git: 'https://github.com/jnicklas/capybara', ref: '7fa75e55420e'
  gem 'database_cleaner', '~> 0.7.2'
  gem 'launchy', '~> 2.1.0'
  gem 'shoulda-matchers'
end

