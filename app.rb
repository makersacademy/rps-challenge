require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/select' do
    @game = $game
    @game.player_selection
    @game.ia_selection
    erb :results
  end

  get '/quit' do
    @game = $game
    erb :quit
  end

  run! if app_file == $0
end