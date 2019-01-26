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
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player.name
    erb :play
  end

  get '/game' do
    @player = $player.name
    @choice = params[:choice]
    erb :game
  end
end
