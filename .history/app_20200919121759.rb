
require 'sinatra/base'
require './lib/player.rb'
require './lib/comp.rb'
require './lib/game.rb'
class RPS < Sinatra::Base
	before do
		@game = Game.instance
	end 
  get '/' do
    erb :index
	end
	
	post '/name' do
		player = Player.new(params[:name])
		@game = Game.create(player)
  	redirect '/play'
	end

	get '/play' do
		@game = Game.instance
		erb :play
	end

	post '/move' do 
		@game = Game.instance
		@game.player.move = params[:move]
		redirect '/result'
	end

	get '/result' do 
		@game = Game.instance
		@game.comp.move
		erb :result 
	end 
	run! if app_file == $0
	end 
