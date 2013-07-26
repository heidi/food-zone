source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.13'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'activeadmin'
# because of http://stackoverflow.com/questions/16905633/cant-install-active-admin-for-ruby-on-rails-sprocketsfilenotfound
gem 'jquery-rails', "2.3.0"
gem 'bootstrap-sass'
gem 'haml-rails'
gem 'pg'
gem 'thin'
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :rbx]
  gem 'html2haml'
  gem 'hub', :require=>nil
end
group :development, :test do
  gem 'rspec-rails'
end
group :test do
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'factory_girl'
end
