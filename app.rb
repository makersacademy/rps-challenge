require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
   erb :index 
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect :play
  end
  
  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    redirect :duel
  end

  get '/duel' do
    @player1_move = session[:move]
    @player2_move = Game.new.computer_move
    erb :duel
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
