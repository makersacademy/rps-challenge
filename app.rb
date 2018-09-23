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
    p session[:play_mode]
    @play_mode = session[:play_mode]
    erb :names
  end

  post '/store_names' do
    player1 = Player.new(params[:player1_name])
    session[:game] = Game.new(player1)
    redirect '/play'
  end

  get '/play' do
    @name = session[:game].players.first.name
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
