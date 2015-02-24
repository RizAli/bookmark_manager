require 'sinatra'
require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'

# tell the datamapper to use a postgres database on localhost.
# the name will be "bookmark_manager_test" or "bookmark_manager_development" depending on the environment

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

require './lib/link' # this needs to be done after datamapper is initialised

# After declaring your modes, you should finalise them
DataMapper.finalize

# However, the database tables don't exist yet. let's tell datamapper to create them
DataMapper.auto_upgrade!