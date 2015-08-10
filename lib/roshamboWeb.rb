require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RoshamboWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions
  $game = Game.new

  get '/' do
    erb :index
  end

  get '/welcome' do
    redirect '/' if params[:player_name] == ''

    $game.player_1 ? $game.player_2 = Player.new(params[:player_name]) : $game.player_1 = Player.new(params[:player_name])

    $game.player_2 ? session[:player] = $game.player_2.name : session[:player] = $game.player_1.name

    erb :welcome
  end

  get '/game' do
    current_player = session[:player] == $game.player_1.name ? $game.player_1 : $game.player_2
    current_player.name == $game.player_1.name ? current_player.move = params[:move].downcase : $game.player_2.move = params[:move].downcase
    erb :game
  end

  get '/results' do

    $game.player_2.move ? @player_1_winner = $game.first_move_winner?($game.player_1.move, $game.player_2.move) : "Your opponnent takes forever to decide"
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
