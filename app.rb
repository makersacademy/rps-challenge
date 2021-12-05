require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class RSP < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :session

  get '/' do
    erb :homepage
  end

  post '/play' do
    player1 = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    $game = Game.new(player1, player2)
    erb :play
  end

  post '/play2' do
    $game.player1.choose_move(params[:p1move])
    erb :play2
  end

  post '/outcome' do
    $game.player2.choose_move(params[:p2move])
    @outcome = $game.fight_outcome
    erb :outcome
  end

  post '/play_again' do
    erb :play
  end

  run! if app_file == $0
end
