require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = params[:player_1_name]
    $game = Game.new(player_1)
    redirect '/game'
  end

  get '/game' do
    @game = $game
    erb :game_view
  end

  post '/compete' do
    @game = $game
    @game.player_choice = params[:value]
    @game.computer_chooses
    @game.evaluate
    redirect '/victory'
  end

  get '/victory' do
    @game = $game
    erb :victory
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
