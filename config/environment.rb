ENV['SINATRA_ENV'] ||= "development"
require 'pry'
require 'bundler/setup'
require_relative '../app/helpers/helpers.rb'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require_all 'app'