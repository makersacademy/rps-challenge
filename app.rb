require 'sinatra/base'
require './lib/model.rb'

class Controller < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:player_name]
    redirect 'game_type'
  end

  get '/game_type' do
    @player_1 = session[:name]
    erb :game_type
  end

  post '/game_option' do
    session[:game] = params[:game]
    redirect '/rps_game'
  end

  get '/rps_game' do
    @game = session[:game]
    erb :rps_game
  end

  post '/move' do
    session[:player_move] = params[:player_move]
    redirect '/game_result'
  end

  get '/game_result' do
    @player_move = session[:player_move]
    @player_2_move = machine_move
    @result = rock(@player_2_move) if @player_move == "rock"
    @result = paper(@player_2_move) if @player_move == "paper"
    @result = scissors(@player_2_move) if @player_move == "scissors"
    erb :game_result
  end

  post '/play_again' do
    session[:again] = params[:again]
    redirect '/game_type'
  end

  run! if app_file == $0

end
