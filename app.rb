require 'sinatra/base'
require 'pry'
require './lib/player'
require './lib/game'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end


  post '/game' do
    $user = Player.new(params[:user])
    # $game = Game.new($player_1, $player_2)
    redirect '/game'
  end

  get '/game' do
    @user = $user
    erb :game
  end

  post '/result' do
    $move = Game.new(params[:move])
    redirect '/result'
  end

  get '/result' do
    @user_move = $move.user_move
    @auto_move = $move.determine_auto_move
    @result = $move.determine_winner
    erb :result
  end

  run! if app_file == $0
end
