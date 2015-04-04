require 'sinatra/base'
require_relative 'game'

class Rps < Sinatra::Base
  enable :sessions
  include Game

  Game.players = []
  Game.moves = []
  get '/' do
    erb :index
  end

  post '/multi' do
    @name = params[:name]
    if @name
      Game.players << @name
      session[:name] = @name
      session[:number] = Game.players.length
    end
    @player_number = session[:number] - 1
    @total_players = Game.players.length
    if session[:both_names].nil? && @total_players.even?
      session[:both_names] = Game.players[-2..-1]
    end
    if params[:move]
      Game.moves[@player_number] = params[:move]
    end
    if @player_number.even?
      @their_move = Game.moves[@player_number + 1]
    else
      @their_move = Game.moves[@player_number - 1]
    end
    @my_move = Game.moves[@player_number]
    puts "my move #{@my_move.inspect}
          theirs #{@their_move.inspect}, all #{Game.moves.inspect}"
    puts "names are #{session[:both_names].inspect}"
    @waiting = session[:both_names].nil?
    puts session.inspect
    puts Game.players.inspect
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
