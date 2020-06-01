require 'sinatra/base'
require './lib/computer'
require './lib/result'
require './lib/move'

class Player < Sinatra::Base
  set :session_secret, "something"
  enable :sessions

  get '/' do
    erb :index
  end

  post '/info' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb :play
  end

  post '/game' do
    $comp_choice = Computer.new.move
    move = Move.new(params[:move])
    $move= move.move
    p $comp_choice
    $result = Result.new($comp_choice, $move).results
    erb :game
  end
end