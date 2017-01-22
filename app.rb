require 'sinatra/base'
require 'tilt/erb'
require_relative 'lib/game.rb'
require_relative 'lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/result' do
    @game = Game.current_game
    erb @game.player_one_win_state
  end

  post '/player_1_turn' do
    game = Game.new
    player_1_details = {name: params[:player_1_name], choice: params[:choice]}
    game.player_1 = Player.new player_1_details
    if params[:game_mode] == "cpu"
      game.player_2 = Player.new
      redirect '/result'
    else
      redirect '/player_2_turn'
    end
  end

  run! if app_file == $PROGRAM_NAME
end
