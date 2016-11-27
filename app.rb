require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/result' do
    @game = $game
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
