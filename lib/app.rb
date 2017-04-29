require 'sinatra/base'
#require './lib/user'
#require './lib/rockpaperscissors'

class Game < Sinatra::Base

get '/' do
  erb (:index)
end

post '/users' do
  p params
  @username = params[:"user"]
  p @username
  erb(:play)
end

get '/play' do
erb(:play)
end

  run! if app_file == $0
end
