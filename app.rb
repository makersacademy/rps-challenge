require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base
	enable :sessions

  get '/' do
    erb :index
  end

 	post '/name_and_weapon' do 
 		$player = Player.new(params[:name],params[:weapon])
 		redirect '/game'
 	end

 	get '/game' do
 		@player = $player.name
 		@weapon = $player.weapon
 		erb :game
 	end


 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
