require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  get '/singleplayer' do
    erb(:single_player)
  end

  post '/two_players' do
    player_1 = Player.new(params[:player_1_name], params[:player_1_choice])
    player_2 = Player.new(params[:player_2_name], params[:player_2_choice])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  post '/one_player' do
    player_1 = Player.new(params[:player_1_name], params[:player_1_choice])
    player_2 = Player.new
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_choice = $game.player_1.choice
    @player_2_choice = $game.player_2.choice
    erb(:play)
  end

  get '/result' do
    $game.play
    redirect '/draw' if $game.winner == 'draw'
    @game = $game
    erb(:result)
  end

  get '/draw' do
    erb(:draw)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
