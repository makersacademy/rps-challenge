require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/game' do
    @player_1_name = $game.player_1.name
    erb :game
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/game'
  end

  run! if app_file == $0
end
