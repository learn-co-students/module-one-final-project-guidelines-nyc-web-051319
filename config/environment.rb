require 'bundler'
Bundler.require
require "sinatra/activerecord"
require_all 'app'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
