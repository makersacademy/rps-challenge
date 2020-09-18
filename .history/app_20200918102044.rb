require "sinatra/base"
require './lib/player'
class RPS < Sinatra::Base
	enable :sessions
  get '/' do
	erb :index
	end
	
	post '/names' do
		$player1 = Player.new(params[:player1])
		$player2 = Player.new(params[:player2])
		redirect '/play'
	end 

	get '/play' do
		@player1 = $player1.name
		@player2 = $player2.name
		@player1_score = $player1.score
		@player2_score = $player2.score
		erb :play
	end  
	
	get '/playing' do 
		@player1 =$player1.name
		@player2 = $player2.name
		erb :playing
	end 

  run! if app_file == $0
end
