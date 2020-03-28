require './lib/player'
require './lib/game'
require "sinatra/base"

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :entering_names
  end
  
  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), 
                     Player.new(params[:player_2_name]))
    redirect '/lets-play'
  end

  get '/lets-play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb :lets_play
  end

  get '/play' do
    redirect '/result' if $game.current_player.action
    @current_player = $game.current_player
    erb :play
  end

  get '/result' do
    @winner = $game.winner($game.player_1, $game.player_2)
      
    erb :result
  end

  post '/action' do
    $game.current_player.allocate(params[:weapon])
    $game.switch_turns
    redirect '/play'
  end

  # run! if app_file == $0
end
