source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.6'
gem 'pg'
gem 'puma', '~> 4.3'
gem 'bcrypt'
gem 'jwt'
gem 'simple_command'
gem 'money-rails', '~>1'
gem 'rack-cors', require: 'rack/cors'
gem 'carrierwave', '~> 1.0'
gem 'cloudinary'
gem 'active_model_serializers', '~> 0.10.0'
gem 'pg_search'
gem 'geocoder'
gem 'mailgun-ruby', '~>1.1.6'
gem 'kaminari'
gem 'redis'
gem 'redis-namespace'
gem 'sidekiq'
gem 'httparty'
gem 'valid_email2'

gem 'capistrano', '~> 3.7', '>= 3.7.1'
gem 'capistrano-rails', '~> 1.2'
gem 'capistrano-passenger', '~> 0.2.0'
gem 'capistrano-rbenv', '~> 2.1'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
