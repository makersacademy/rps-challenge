require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new
    @game = Game.create(player_1, player_2)
    erb :play
  end

  get '/game_result' do
    @chosen_move = params[:player_1_move]
    @robot_move = ["Rock", "Paper", "scissors"].sample
    erb :game_result
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
