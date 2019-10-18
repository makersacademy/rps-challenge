require 'sinatra'
require 'shotgun'
require './lib/game'

class RPS_Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player-name' do
    @player_name = params[:player_name]
    $game = Game.new(@player_name)
    redirect '/play-game'
  end

  get '/play-game' do
    @game = $game
    erb :play
  end

  post '/play-game' do
    @game = $game
    @player_move = params[:player_move]
    @game.computer_move = @game.get_computer_move
    @game.player_move = @player_move
    redirect '/game-result'
  end

  get '/game-result' do
    @game = $game
    erb :result
  end

end
