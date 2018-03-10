require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/register_names' do
    $game = Game.new(Player.new(params[:player_1_name]))
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player
    @move = $move
    @winner = $game.new_move(@move)
    erb :play
  end

  post '/move' do
    $move = params[:submit]
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
