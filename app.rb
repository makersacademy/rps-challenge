require 'sinatra/base'
require_relative 'lib/game'

class Rps < Sinatra::Base
  enable :sessions 

  configure :development do
    
  end

  get '/' do
    $game = Game.new
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/attack1' do
    session[:player_move] = params[:move]
    session[:computer_move] = $game.computer_move
    redirect '/attack'
  end

  get '/attack' do
    @player_name = session[:player_name]
    @player_move = session[:player_move]
    @computer_move = session[:computer_move]
    #@winner = $game.winner     ----     Start from here on Sunday
    erb :attack
  end
end