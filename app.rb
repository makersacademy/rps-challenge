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

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/player_one_move'
  end

  get '/player_one_move' do
    @game = $game
    erb :player_one_move
  end

  post '/player_one_choice' do
    $game.player_1.move(params[:player_one_choice])
    redirect '/player_two_move'
  end

  get '/player_two_move' do
    @game = $game
    erb :player_two_move
  end

  post '/player_two_choice' do
    $game.player_2.move(params[:player_two_choice])
    redirect '/choice'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/choice' do
    $game.player_1.move(params[:choice])
    $game.player_2.random_choice
    redirect '/choice'
  end

  get '/choice' do
    @game = $game
    erb :choice
  end

  run! if app_file == $0
end
