require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    "Registered!"
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/results' do
    @player_1_move = params[:move]
    @player_2_move = ["Rock","Paper","Scissors"].sample
    game =Game.new(session[:player_1_name], "Computer")
    game.results(@player_1_move, @player_2_move)
    erb :results
  end
end