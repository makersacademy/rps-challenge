require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/rps'


class RPS < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end


  get '/' do
    erb :enter_names
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $rps_game = Rps.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @rps_game = $game
    erb :play
  end

  post '/play' do
    @rps_game = $game
    redirect '/result'
  end

  get '/result' do


  end




end