require 'sinatra/base'
require './lib/machine'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.game(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player_1_name = @game.player.name
    erb :play
  end

  post '/game' do
    @game = Game.instance
    @player_1_name = @game.player.name
    @player_weapon = params[:weapon]
    @machine_weapon = @game.machine.weapon.class.to_s
    @game.weapon_assign(@player_weapon)
    erb :game
  end

  run! if app_file == $0
end
