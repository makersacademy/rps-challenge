require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' if development?
# http://localhost:4567
# rackup -p 4567

class Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  run! if app_file == $0
end
