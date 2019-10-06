require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Player.new("Computer")
    $game = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/move' do
    @game = $game
    @player1_move = @game.player1.move(params[:move])
    @player2_move = @game.player2.random_move
    erb(:move)
  end


  run! if app_file == $0
end
