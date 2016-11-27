require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player_one = Player.new(params[:player_one_name])
    $game = Game.new(player_one)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/result' do
    @game = $game
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
