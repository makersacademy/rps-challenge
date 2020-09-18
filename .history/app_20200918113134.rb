require "sinatra/base"
require './lib/player.rb'
require './lib/game.rb'
class RPS < Sinatra::Base
	enable :sessions
  get '/' do
	erb :index
	end
	
	post '/names' do
		player1 = Player.new(params[:player1])
		player2 = Player.new(params[:player2])
		$game = Game.new(player1, player_2)
		redirect '/play'
	end 

	get '/play' do
		@game = $game
		erb :play
	end  
	
	get '/playing' do 
		@game = $game
		@game.play(@player1)
		erb :playing
	end 

  run! if app_file == $0
end
