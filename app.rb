require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

  get '/play' do
    erb :play
  end

  post '/weapon' do
    p @weapon = params[:weapon]
    p Game.create(@weapon)
    p Game.instance.computer_weapon
    p Game.instance.player_weapon
    erb :weapon_confirm
  end

  get '/weapon_confirm' do
    erb :weapon_confirm
  end

  get '/game' do
    p @result = Game.instance.result
    p @computer_weapon = Game.instance.computer_weapon
    erb :game
  end

end
