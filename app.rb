require 'sinatra/base'
require "./lib/game"
require "./lib/player"

class MyRackApp < Sinatra::Base
  get '/' do
  	erb :index
  end 	
  post '/names' do  
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    $game = Game.new(@player_1, @player_2) 
    redirect '/play'
  end
 
  get '/play' do
    @game = $game
    erb :play
  end

  # post '/play' do
  #   "<marquee> Heloooooooo</marquee>"
  # end

  post '/play' do
    @game = $game
    @player_1_weapon = params[:player_1_weapon]
    @player_2_weapon = params[:player_2_weapon]
    redirect './result'
  end    
    
  get '/result' do
    '<blink>' + $game.player_1.name #+ 'wins with' + @player_1_weapon 
  end   
  run! if app_file == $0
end