require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:Player])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/weapons' do
    @player = $player
    $game = Game.new($player, params[:Weapons])
    redirect '/finish'
  end

  get '/finish' do
    @game = $game
    erb :finish
  end

  run! if app_file == $0
end
