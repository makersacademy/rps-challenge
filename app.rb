require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    @num_players = session[:num_players]
    erb :index
  end

  get '/single-player' do
    session[:num_players] = 1
    redirect '/'
  end

  get '/two-player' do
    session[:num_players] = 2
    redirect '/'
  end

  post '/name' do
    game = Game.new
    game.set_num_players(session[:num_players])
    game.set_player_names(params[:player1_name], params[:player2_name])
    session[:game] = game
    redirect '/play'
  end

  get '/play' do
    game = session[:game]
    @num_players = session[:num_players]
    @player1_name = game.player1_name
    @player2_name = game.player2_name
    @player1_choice = game.player1_choice
    @winner = game.winner
    @player2_choice = game.player2_choice
    erb :play
  end

  get '/choice' do
    game = session[:game]
    game.set_choice(params[:player_choice])
    session[:game] = game
    redirect '/play'
  end

  get '/restart' do
    game = session[:game]
    game.restart
    session[:game] = game
    redirect '/play'
  end

  run! if app_file == $0

end
