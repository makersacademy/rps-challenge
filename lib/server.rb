require 'sinatra/base'
require_relative 'game'
require_relative 'players'

class Rps < Sinatra::Base
  enable :sessions
  include Game, Players

  Players.players = []
  Players.data = []

  get '/' do
    erb :index
  end

  post '/multi' do
    #############################################
    # set-up
    ########################################
    @name = params[:name]
    setup_player if @name

    @player_number = session[:number]
    @total_players = Players.players.length
    @my_data = Players.data[@player_number]
    if session[:both_names].nil? && @total_players.even?
      session[:both_names] = Players.players[-2..-1]
    end

    @their_data = setup_opponent
    ###########################################
    # Moves
    ###########################################
    @their_move = @their_data[:move]
    @their_name = @their_data[:name]

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
