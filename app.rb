require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  get '/move' do
    @player_1_name = session[:player_1_name]
    @player_1_move = params[:move]
    @game = Game.new
    @computer_move = @game.random_move
    @who_wins = @game.move_comparison(@player_1_move, @computer_move)

    erb :move
  end


  run! if app_file == $0
end
