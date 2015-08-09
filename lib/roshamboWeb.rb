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
    $game = Game.new
    $game.player_1, $game.player_2 = Player.new(session[:name]), Player.new('computer')
    erb :welcome
  end

  get '/game' do
    session[:move] = params[:move].downcase
    $game.player_1.move = session[:move]
    $game.player_2.move = $game.random_move
    @player_1_winner = $game.first_move_winner?($game.player_1.move, $game.player_2.move)
    erb :game
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
