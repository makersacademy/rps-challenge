require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'cy-krets'

  get '/' do
    erb :reg_names
  end

  post '/play' do
    # player1 = Player.new(params[:player1_name])
    p $game = Game.new(Player.new(params[:player1_name]))
    # p p1_choice = player1.player_choice(params[:p1_choice])
    # $game.p1_choice
    $game.computer_choice
    erb :play
  end

  post '/results' do
    p $game.player_choice(params[:p1_choice])
    # p p1_choice = player1.player_choice(params[:p1_choice])
    p $game.results
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
