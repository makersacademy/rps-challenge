require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RpsApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/names' do
    erb :names
  end

  post '/names' do
    $player_1 = Player.new(params[:player_name])
    $player_2 = Player.new("R2D2")

    redirect :play
  end

  get '/play' do

    @player_1 = $player_1
    @player_2 = $player_2

    erb :play
  end

  post '/show_down' do
    $game = Game.new
    @game = $game
    @player_1 =$player_1
    @player_2 = $player_2
    @game.record_player_1_choice(params[:choice])
  
    erb :show_down
  end

end
