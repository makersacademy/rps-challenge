require 'sinatra/base'
require 'shotgun'
require './lib/player.rb'
require './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions
  set :session_secret, "this is a secret...."

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player])
    $game = Game.new(player1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/game' do
    @game = $game
    @weapon1 = params[:weapon]
    @weapon2 = @game.random_rps
    erb :game
  end
end
