require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/selection1'
  end

  get '/selection1' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :selection
  end

  post '/assign_move1' do
    $player_1_move = params[:player_1_move]
    redirect '/selection2'
  end

  get '/selection2' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :selection2
  end

  post '/assign_move2' do
    $player_2_move = params[:player_2_move]
    redirect '/moves'
  end

  get '/moves' do
    $game = Game.new($player_1, $player_2)
    $player_1.current_move($player_1_move)
    $player_2.current_move($player_2_move)
    @outcome = $game.start_game
    @pengu = 'pengudab.jpg'
  erb :player_moves
  end

end
