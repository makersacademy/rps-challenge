require 'sinatra/base'
require_relative 'game'
require_relative 'players'
require_relative 'game_play'

class Rps < Sinatra::Base
  enable :sessions
  include Game, Players, GamePlay

  Players.data = []

  get '/' do
    erb :index
  end

  post '/multi' do
    new_player if params[:name]
    collect_match_data
    remember_moves
    @result = result(@my_move, @their_move)
    calculate_scores if @my_move && @their_move && !@my_data[:calc]
    @my_score, @their_score = save_scores
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
