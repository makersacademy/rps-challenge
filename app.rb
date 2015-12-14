require 'sinatra/base'
require './lib/game'


class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    player_1 = Player.new(params[:player_name])
    $game = Game.new(player_1)
    @game = $game
    erb(:play)
  end

  post '/result' do
    p params
    @game = $game
    @game.player_1.choose(params[:weapon])
    @game.player_2.choose_weapon
    erb(:result)
  end

  get '/replay' do
    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
