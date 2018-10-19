require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/one_player' do
    erb :one_player
  end

  get '/two_players' do
    erb :two_players
  end

  post '/name' do
    player_1 = Player.new(params[:name])
    $game = Game.new(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/choice' do
    $game.player_1.move(params[:choice])
    @game = $game
    erb :choice
  end

  run! if app_file == $0
end
