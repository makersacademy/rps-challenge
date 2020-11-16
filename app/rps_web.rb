require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/computer'
require_relative '../lib/weapon'
require_relative '../lib/game'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/players' do
    $game = Game.new(Player.new(params[:name]))
    redirect '/play'
  end

  post '/attack' do
    $game.player.weapon = Weapon.new(params[:weapon])
    @game = $game
    erb :attack
  end

  run! if app_file == $0
end