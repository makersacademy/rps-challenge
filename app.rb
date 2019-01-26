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
    $game = Game.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $game.player
    erb :play
  end

  get '/game' do
    @player = $game.player
    @weapon = params[:weapon]
    @computer = $game.random_rps
    erb :game
  end
end
