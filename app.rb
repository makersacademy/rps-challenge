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
    @game = $game
    @move = $move
    erb :play
  end

  post '/move' do
    $move = params[:submit]
    redirect '/winner'
  end

  get '/winner' do
    @game = $game
    @move = $move
    @game.new_move(@move)
    erb :winner
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
