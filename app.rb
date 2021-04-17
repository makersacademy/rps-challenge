require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/start_game' do
    @game = $game 
    erb :start_game
  end

  
  run! if app_file == $0
end
