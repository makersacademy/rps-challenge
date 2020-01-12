require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0 
end
