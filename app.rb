require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect(:play)
  end

  get '/play' do
    @player_name = $player.name
    erb(:play)
  end

  post '/weapon' do
    $player.weapon=(params[:weapon])
    redirect(:result)
  end

  get '/result' do
    @player_weapon = $player.weapon
    @comp_weapon = Computer.weapon
    erb Game.play(@player_weapon, @comp_weapon)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
