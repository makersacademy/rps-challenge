require 'sinatra/base'
require './lib/player.rb'
require './lib/opponent.rb'
require './lib/game.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/new_game' do
  	name = params[:name] 
  	Game.create(Player.new(name),Opponent.new)
  	redirect '/game'
  end

  get '/game' do
  	@game = Game.instance
  	erb :game
	end

	post '/choice' do
		@game = Game.instance
		@game.player.choice = params[:choice]
		@game.opponent.choose
		@game.decide_winner
		erb :choice
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
