require 'sinatra/base'
require_relative 'game'

class Rps < Sinatra::Base
  enable :sessions
  include Game

  Game.players = []
  Game.data = []

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
    @total_players = Game.players.length
    @my_data = Game.data[@player_number]
    if session[:both_names].nil? && @total_players.even?
      session[:both_names] = Game.players[-2..-1]
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

  def setup_opponent
    if @player_number.even?
      @their_number = @player_number + 1
    else
      @their_number = @player_number - 1
    end
    Game.data[@their_number] || {}
  end

  def setup_player
    @player_number = Game.players.length
    session[:number] = @player_number
    Game.players << @name
    session[:name] = @name
    Game.data[@player_number] = { name: @name }
  end

  def remember_moves
    @my_data[:move] = params[:move] if params[:move]
    @my_move = @my_data[:move]
  end

  def waiting?
    session[:both_names].nil? ||
      (@my_move && !@their_move)
  end

  def calculate_scores
    @result = result(@my_move, @their_move)
    @my_data[:score] ||= 0
    @my_data[:score] += 1 if @result == :win
    @their_score = @their_data[:score]
    @my_score = @my_data[:score]
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
