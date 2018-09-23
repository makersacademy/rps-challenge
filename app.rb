require 'sinatra/base'
require_relative 'lib/game'
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
    if session[:play_mode] == :single_player
      session[:game] = Game.new(player1)
    else
      player2 = Player.new(params[:player2_name])
      session[:game] = Game.new(player1, player2)
    end
    redirect '/play'
  end

  get '/play' do
    @play_mode = session[:play_mode]
    @player1_name = session[:game].players.first.name
    @player2_name = session[:game].players.last.name
    erb :play
  end

  post '/store_move' do
    selected_move = params.first[0]
    session[:game].store_move(selected_move)
    redirect '/winner'
  end

  get '/winner' do
    @winner = session[:game].who_won
    erb :winner
  end
end
