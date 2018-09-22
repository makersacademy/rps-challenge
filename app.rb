require 'sinatra/base'
require './lib/player'
require './lib/move_generator'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/singleplayer' do
    erb :singleplayer
  end

  get '/twoplayer' do
    erb :twoplayer
  end

  post '/singleplayer-game' do
    session[:game] = Game.new(Player.new(params[:name]), Player.new('The Computer'))
    session[:computer] = MoveGenerator.new
    redirect '/singleplayer-game'
  end

  get '/singleplayer-game' do
    erb :singleplayer_game
  end

  post '/twoplayer-game' do
    session[:game] = Game.new(Player.new(params[:name1]),Player.new(params[:name2]))
    redirect '/player1-turn'
  end

  get '/player1-turn' do
    erb :multi_p1
  end

  post '/results' do
    session[:game].player1.player_move(params[:move])
    session[:game].player2.player_move(session[:computer].random_move)
    redirect '/results'
  end

  get '/results' do
    erb :results
  end
end
