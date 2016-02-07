require 'sinatra/base'
require './lib/player'
#require './lib/game'
require './lib/cpu'
require './lib/game_ext'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/game_type' do
    $game_type = params[:game]
    $game_rules = params[:rules]
    redirect '/oneplayer' if $game_type == 'oneplayer'
    redirect '/twoplayer'
  end

  get '/oneplayer' do
    erb(:oneplayer)
  end

  get '/twoplayer' do
    erb(:twoplayer)
  end

  post '/names' do
    ($game_type == 'oneplayer')? (player2 = Cpu.new) : (player2 = Player.new(params[:Player_2_Name])) 
    player1 = Player.new(params[:Player_1_Name])
    if $game_rules == 'normal'
      $game = Game_ext.new([player1, player2])
      redirect '/play'
    else
      $game = Game_ext.new([player1, player2])
      redirect '/play_ext'
    end
  end

  get '/play' do   
    erb(:play)
  end

  get '/play_ext' do
    erb(:play_ext)
  end

  get '/player1_pick' do
    @player_1 = $game.players.first
    erb(:player1_pick)
  end

  get '/player1_pick_ext' do
    @player_1 = $game.players.first
    erb(:player1_pick_ext)
  end

  post '/player1_has_picked' do
    @player_1 = $game.players.first
    @player_1.choice = params[:hand1]
    if $game_type == 'oneplayer'
      $game.players.last.pick
      redirect '/end'
    else
      ($game_rules == 'normal')? (redirect '/player2_pick') : (redirect '/player2_pick_ext')
    end
  end

  get '/player2_pick' do
    @player_2 = $game.players.last   
    erb(:player2_pick)
  end

  get '/player2_pick_ext' do
    @player_2 = $game.players.last   
    erb(:player2_pick_ext)
  end

  post '/player2_has_picked' do
    @player_2 = $game.players.last
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
