require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  run! if app_file == $0
end
