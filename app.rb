require 'sinatra/base'
require_relative 'lib/game_mode'
require_relative 'lib/player'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, "Ssssshhh! secret"

  get '/' do
    erb :welcome
  end

  post '/store_play_mode' do
    session[:play_mode] = params[:play_mode].to_sym
    redirect '/names_input'
  end

  get '/names_input' do
    @play_mode = session[:play_mode]
    erb :names
  end

  post '/store_names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    game_mode = GameMode.new(player_mode: session[:play_mode], player1: player1, player2: player2)
    session[:game_mode] = game_mode
    redirect '/play'
  end

  get '/play' do
    @play_mode = session[:play_mode]
    @player1_name = session[:game_mode].game.players.first.name
    @player2_name = session[:game_mode].game.players.last.name
    erb :play
  end

  post '/store_move' do
    player1_move = params[:player1_move]
    player2_move = params[:player2_move]
    session[:game_mode].store_move(player1_move, player2_move)
    redirect '/winner'
  end

  get '/winner' do
    @winner = session[:game_mode].who_won
    erb :winner
  end
end
