require 'sinatra/base'
require './lib/player'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = Player.new(params[:name])
    redirect '/game'
  end

  get '/game' do
    @player_name = $player.name
    erb(:game)
  end

  get '/results' do
    @player_name = $player.name
    @player_move = session[:player_move]
    erb(:results)
  end


end
