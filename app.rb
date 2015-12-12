require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/weapon'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $weapon   = Weapon.new(:rock, :scissors)
    $game     = Game.new($player_1, $weapon)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
