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
    @weapon = params[:weapon]
    erb :weapon_confirm
  end

  get '/weapon_confirm' do
    erb :weapon_confirm
  end

  post '/game' do
    @game = Game.new
    @game.game_roll
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

end
