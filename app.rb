require 'sinatra/base'
# require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/save_name' do
    $player_name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name
    erb :play
  end

  post '/save_move' do
    player_move = params[:player_move]
    $game = Game.new($player_name, player_move)
    redirect '/result'
  end

  get '/result' do
    @message = $game.msg
    erb :result
  end

  run! if app_file == $0
end
