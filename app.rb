require 'sinatra/base'
require './lib/player'
require './lib/move_generator'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/singleplayer' do
    erb :singleplayer
  end

  post '/singleplayer-game' do
    session[:player] = Player.new(params[:name])
    session[:player2] = Player.new('The Computer')
    session[:computer] = MoveGenerator.new
    redirect '/singleplayer-game'
  end

  get '/singleplayer-game' do
    erb :singleplayer_game
  end

  post '/results' do
    session[:player].player_move(params[:move])
    session[:player2].player_move(session[:computer].random_move)
    redirect '/results'
  end

  get '/results' do
    erb :results
  end
end
