require 'sinatra/base'
require './lib/player'
require './lib/auto_player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :homepage
  end

  post '/play' do
    @player_name = params[:player_name]
    player1 = Player.new(@player_name)
    player2 = AutoPlayer.new
    session[:player1] = player1
    session[:player2] = player2
    erb :play
  end

  get '/play' do
    @player_name = session[:player1].name
    erb :play
  end

  post '/result' do
    game = Game.new
    game_setup = { player1: session[:player1],
                   p1_move: params[:move].to_sym,
                   player2: session[:player2],
                   p2_move: session[:player2].move
                 }
    @results = game.result(game_setup)
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
