require_relative './lib/player.rb'
require 'sinatra/base'
require 'shotgun'

class Rps < Sinatra::Base

  get '/' do 
    erb(:index)
  end

  post '/names' do 
    player_1 = params[:player_name]
    "Hey #{player_1} you are now playing RPS"
  end

  get '/game' do 
    player_1 = params[:player_name]
  end

  get '/result' do 
    "result page"
  end

  run! if app_file == $0

end
