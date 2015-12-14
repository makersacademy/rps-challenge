require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/result' do
    @game = $game
    @game.player_1.select_weapon(params[:weapon])
    @game.player_2.select_weapon(@game.player_2.weapons.sample)
    @game.outcome(@game.player_1.weapon, @game.player_2.weapon)
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb :result
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
