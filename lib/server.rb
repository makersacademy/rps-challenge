require 'sinatra/base'
require_relative 'game'
require_relative 'players'

class Rps < Sinatra::Base
  enable :sessions
  include Game, Players

  Players.data = []

  get '/' do
    erb :index
  end

  post '/multi' do
    setup_player if params[:name]
    collect_data
    remember_moves
    calculate_scores

    erb :multi
  end

  post '/game' do
    session[:name] = params[:name] if params[:name]
    if params[:move]
      @other_move = other_move
      other_move
      @move = params[:move]
      params[:result] = result(@move, @other_move)
    end
    erb :game
  end

  get '/game' do
    redirect '/'
  end

  get '/multi' do
    redirect '/'
  end

  run! if app_file == $PROGRAM_NAME
end
