require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RoshamboWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/welcome' do
    session[:name] = params[:player_name]
    @player_1 = Player.new session[:name]
    @player_2 = Player.new 'computer'
    $game = Game.new @player_1, @player_2
    erb :welcome
  end

  get '/game' do
    session[:move] = params[:move].downcase
    player_1_move = $game.player_move(session[:move])
    $game.player_2.is_a_computer? ? @won = $game.computer_beats_player?(player_1_move) : "Wait for Player 2"
    erb :game
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
