require 'sinatra/base'
require './lib/computer'
require './lib/results'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb :play
  end

  post '/game' do
    session[:move] = params[:move]
    session[:computer_move] = Computer.new.makes_move
    # session[:game_results] = Results.new(session[:move], session[:computer_move], params[:player_name]).check_results
    redirect '/game'
  end

  get '/game' do
    @move = session[:move]
    @computer_move = session[:computer_move]
    # @game_results = session[:game_results]
    erb :game
  end

  run! if app_file == $0
end
