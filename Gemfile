source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# Core
gem 'acts_as_list'
gem 'bootsnap', '>= 1.4.1', require: false
gem 'chronic'
gem 'config'
gem 'erubis'
gem 'friendly_id', '~> 5.1.0'
gem 'httparty'
gem 'jbuilder', '~> 2.5'
gem 'puma', '~> 3.11'
gem 'rails', '~> 6.0.0.beta3'
gem 'sass-rails', '~> 5.0'
gem 'sidekiq'
gem 'sitemap_generator'
gem 'store_base_sti_class'
gem 'turbolinks', '~> 5'
gem 'validate_url'
gem 'webpacker', '>= 4.0.0.rc.3'
gem 'wicked'


gem 'contentful'
gem 'numbers_and_words'
gem 'rack-cors', require: 'rack/cors'
gem 'redcarpet'
gem 'rich_text_renderer'

# Analytics
gem 'ahoy_matey'
gem 'analytics-ruby'
gem 'blazer'
gem 'groupdate'

# Databases
gem 'pg', '>= 0.18', '< 2.0'
gem 'redis'
gem 'redis-namespace'
gem 'redis-rack-cache'
gem 'redis-rails'

# Phone Tools
gem 'iso_country_codes'
gem 'nexmo'
gem 'phonelib'

# Pagination
gem 'kaminari', github: 'kaminari/kaminari', branch: 'master'

# Authentication
gem 'devise'
gem 'devise-async'
gem 'pundit'
gem 'rolify'

# SEO
gem 'meta-tags'

# Presentation
gem 'cells'
gem 'cells-rails'
gem 'cells-slim'
gem 'chartkick'
gem 'dc_ui', github: 'leonid-io/dc-ui', branch: 'master'
gem 'semantic-ui-sass' # Still needed because we're using the breadcrumb helper
gem 'simple_form'

# Errors
gem 'rollbar'

gem 'heroku-deflater', group: :production
gem 'rack-cors', require: 'rack/cors'


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
