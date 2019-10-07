require 'sinatra/base'
require_relative './lib/game'

class RPSapp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    @player_name = params[:player_name]
    erb :play
  end

  get '/result' do
    @player_move = params[:move]
    @current_game = Game.new
    @computer_move = @current_game.computer_move
    @game_result = @current_game.calculate(@player_move, @computer_move)

    erb :result
  end

  run! if app_file == $0
end