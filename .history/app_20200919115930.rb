
require 'sinatra/base'
require './lib/player.rb'
require './lib/comp.rb'
require './lib/game.rb'
class RPS < Sinatra::Base

  get '/' do
    erb :index
	end
	
	post '/name' do
		player = Player.new(params[:name])
		comp = Comp.new
		@game = Game.create(player, comp)
  	redirect '/play'
	end

	get '/play' do
		@game = Game.instance
		erb :play
	end

	post '/move' do 
		@game.player.move = params[:move]
		redirect '/result'
	end
	
	get '/result' do 
		@game = Game.instance
		@game.comp.choice
		erb :result 
	end 
	run! if app_file == $0
	end 
