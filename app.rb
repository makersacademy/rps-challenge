require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

# Welcome page to enter name
  get '/' do
    erb :index
  end

  post '/names' do
    p params
    player = Player.new(params[:player])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/players_choice' do
    @game = $game
    @game.player_choice($game.computer)
    erb :result
  end

  run! if app_file == $0
end
