require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/cpu'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/game_type' do
    $game_type = params[:game]
    $rules = params[:rules]
    redirect '/players'
  end

  get '/players' do
    ($game_type == 'oneplayer')? erb(:oneplayer) : erb(:twoplayer)
  end

  post '/names' do
    ($game_type == 'oneplayer')? (player2 = Cpu.new) : (player2 = Player.new(params[:Player_2_Name])) 
    player1 = Player.new(params[:Player_1_Name])
    $game = Game.new([player1, player2])
    redirect '/play'
  end

  get '/play' do   
    ($rules == 'normal')? erb(:play) : erb(:play_ext)
  end

  get '/player1_pick' do
    @player_1 = $game.player1
    ($rules == 'normal')? erb(:player1_pick) : erb(:player1_pick_ext)
  end

  post '/player1_has_picked' do
    @player_1 = $game.player1
    @player_1.choice = params[:hand1]
    redirect '/player2_pick' if $game_type == 'twoplayer'
    $game.player2.pick
    redirect '/end'
  end

  get '/player2_pick' do
    @player_2 = $game.player2
    ($rules == 'normal')? erb(:player2_pick) : erb(:player2_pick_ext)
  end

  post '/player2_has_picked' do
    @player_2 = $game.player2
    @player_2.choice = params[:hand2]
    redirect '/end'
  end

  get '/end' do
    @result = $game.result
    erb(:end)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
