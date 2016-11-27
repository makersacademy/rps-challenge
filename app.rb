require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
	
	get '/' do
		erb :index
	end

	post '/name' do
		player = Player.new(params[:player_name])
		@game = Game.create(player)
		redirect '/play'
	end

	get '/play' do
		@game = Game.instance
		@game.choose_weapon(params[:choice])
		erb :play
	end

	get '/result' do
		@game = Game.instance
		erb :result
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
