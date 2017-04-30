require 'sinatra/base'
require_relative './lib/singleplayer'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/single_player' do
    erb :single_player_name
  end

  post '/single_player/game' do
    erb :single_player_game
  end

  post '/single_player/game/result' do
    erb :result
  end
  
end
