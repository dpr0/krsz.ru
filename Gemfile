# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.4.1'
gem 'pg', '~> 0.21'
gem 'delayed_job_active_record'
gem 'dotenv-rails'
gem 'high_voltage'
gem 'jquery-rails'
gem 'less-rails-bootstrap'
gem 'normalize-rails'
gem 'puma'
gem 'rack-canonical-host'
gem 'rails'
gem 'rake'
gem 'redis'
gem 'redis-rails'
gem 'responders'
gem 'simple_form'
gem 'therubyracer'
gem 'title'
gem 'turbolinks'
gem 'rails_admin'
gem 'pundit'
gem 'bootstrap'
gem 'carrierwave'
gem 'ckeditor'
gem 'cocoon'
gem 'devise'
gem 'devise-bootstrap-views'
gem 'haml-rails'
gem 'jquery-datatables-rails'
gem 'mini_magick'
gem 'rails-assets-tether'
gem 'remotipart'
gem 'rmagick'
gem 'sprockets-rails', require: 'sprockets/railtie'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-vkontakte'
gem 'whenever'
gem 'unicorn'
gem 'paperclip'
gem 'react-rails'
gem 'sidekiq'
gem 'rtsp'
gem 'chartkick'

git_source(:dpro) { |repo_name| "git@gitlab.com:dvitvitskiypro/#{repo_name}.git" }
gem 'cc', dpro: 'cc'
gem 'sucker_punch'
gem 'doorkeeper'
gem 'oj'
gem 'oj_mimic_json'
gem 'anycable-rails'
gem 'nokogiri'
gem 'exif'
gem 'rest-client'
gem 'rack-cors', require: 'rack/cors'

group :assets do
  gem 'autoprefixer-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end
group :development do
  gem 'active_record_doctor'
  gem 'bullet'
  gem 'flamegraph'
  gem 'image_optim'
  gem 'image_optim_pack'
  gem 'mailcatcher'
  gem 'meta_request'
  gem 'rubocop', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'stackprof'
  gem 'web-console'
  gem 'byebug'
  gem 'hirb'
  gem 'listen'
  gem 'capistrano',          require: false
  gem 'capistrano-bundler',  require: false
  gem 'capistrano-rails',    require: false
  gem 'capistrano-rvm',      require: false
  gem 'capistrano-sidekiq',  require: false
  gem 'capistrano3-unicorn', require: false
end
group :development, :test do
  gem 'factory_bot'
  gem 'bundler-audit',       require: false
  gem 'rspec-rails'
end
group :test do
  # gem 'capybara-webkit'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'json_spec'
end
