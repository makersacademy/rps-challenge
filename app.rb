require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

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
    erb :play
  end

  post '/choice' do
    $game.store_player_1_choice(params[:choice_made])
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end