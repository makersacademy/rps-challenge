require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
	enable :sessions

  get '/' do
    erb :index
  end

 	post '/name_and_weapon' do 
 		player = Player.new(params[:name],params[:choice])
 		computer = Computer.new
 		$game = Game.new(player, computer)
 		redirect '/game'
 	end

 	get '/game' do
 		@player = $game.player.name
 		@choice = $game.player.choice
 		@computer_choice = $game.computer.computer_choice
 		@game = $game
 		erb :game
 	end




 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
