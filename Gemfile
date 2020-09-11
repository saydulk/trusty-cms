source 'https://rubygems.org'

# This is the minimum of dependency required to run
# the trusty-cms instance generator, which is (normally)
# the only time the trusty gem functions as an
# application. The instance has its own Gemfile, which
# requires trusty and therefore pulls in every
# dependency mentioned in trusty.gemspec.

gem 'trustygems', '~> 0.2.0'

gemspec

group :development, :test do
  gem 'acts_as_list'
  gem 'codeclimate-test-reporter'
  gem 'database_cleaner'
  gem 'factory_bot_rails', '>= 4.10.0'
  gem 'launchy',         '~> 2.4.2'
  gem 'mysql2'
  gem 'poltergeist',      '~> 1.14.0'
  gem 'pry-byebug'
  gem 'rails-observers'
  gem 'rspec-rails', '>= 3.7.2'
end
