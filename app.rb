require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :name
  end

  post '/start' do
    $game = Game.new
    $player_1 = params[:player_1]
    @player_1 = $player_1
    erb :start
  end

  post '/result' do
    @game = $game
    @player_1 = $player_1
    @player_1_move = params[:move]
    erb :result
  end



run! if app_file == $0

end
