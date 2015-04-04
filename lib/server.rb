require 'sinatra/base'
require_relative 'game'

class Rps < Sinatra::Base
  enable :sessions
  include Game

  Game.players = []

  get '/' do
    erb :index
  end

  post '/multi' do
    if params[:name]
      Game.players << session[:session_id]
      session[:name] = params[:name]
      session[:number] = Game.players.length
    end
    @total_players = Game.players.length
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
      params.inspect
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
