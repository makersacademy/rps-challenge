require 'sinatra/base'
require './lib/player'
require './lib/game'

class RpsWeb < Sinatra::Base

  run! if app_file == $0

  enable :sessions

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
    params[:weapons]
    erb :play
  end

end
