require 'sinatra/base'
require './lib/game.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect('/play')
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/result' do
    @player_move = params[:move_choice]
    @game = Game.new
    @computer_result = @game.computer_choice
    @game.player_choice(@player_move)
    @game_result = @game.game_result
    erb :result
  end

  post '/play-again' do
    redirect('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
