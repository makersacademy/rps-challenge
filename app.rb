require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  helpers do
    def game
      @game ||= $game
    end
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/play'
  end

  get '/play' do
    game
    erb :play
  end

  post '/weapon' do
    game
    game.player_1.choose_weapon(params[:weapon])
    erb :weapon
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
