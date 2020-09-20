
require 'sinatra/base'
require './lib/player'
require './lib/comp'
require './lib/game'
class RPS < Sinatra::Base
	enable :sessions
	before do
		@game = Game.instance
	end 

  get '/' do
    erb (:index)
	end
	
	post '/name' do
		player = Player.new(params[:name])
		comp = Comp.new
		@game = Game.create(player)
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
		@game.comp.move
		erb :result 
	end 

	post '/newgame' do
		@game = Game.instance
		redirect '/play'
	end 

	run! if app_file == $0
	end 
