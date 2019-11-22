require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/test-infrastructure' do
    "Test infrastructure correctly functioning"
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:name])
    player_2 = Player.new("Computer")
    $game = Game.new(player_1, player_2)
    redirect '/confirm'
  end

  get '/confirm' do
    @game = $game
    erb :confirm
  end

  post '/start-game' do
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/move' do
    $game.player_1.make_move(params[:move])
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb :result
  end

end
