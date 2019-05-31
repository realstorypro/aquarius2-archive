source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'bootsnap', '>= 1.4.1', require: false
gem 'jbuilder', '~> 2.5'
gem 'puma', '~> 3.11'
gem 'rails', '~> 6.0.0.beta3'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3', '~> 1.3', '>= 1.3.6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '>= 4.0.0.rc.3'

gem 'devise'
gem 'slim-rails'

gem 'contentful'
gem 'dc_ui', github: 'leonid-io/dc-ui', branch: 'r6'
gem 'httparty'
gem 'meta-tags'
gem 'numbers_and_words'
gem 'rack-cors', require: 'rack/cors'
gem 'redcarpet'
gem 'rich_text_renderer'

gem 'heroku-deflater', :group => :production

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
