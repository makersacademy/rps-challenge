require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    game = Game.new
    game.set_player_name(params[:player_name])
    session[:game] = game
    redirect '/play'
  end

  get '/play' do
    game = session[:game]
    @player_choice = game.player_choice
    @player_name = game.player_name
    @winner = game.winner
    @computer_choice = game.computer_choice
    erb :play
  end

  get '/choice' do
    game = session[:game]
    game.set_player_choice(params[:player_choice])
    session[:game] = game
    redirect '/play'
  end

  run! if app_file == $0

end
