require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
	set :public_folder, Proc.new { File.join(root, "public") }
	set :views, Proc.new {File.join(root, "..", "views") }
	game = Game.new
	player = Player.new
	enable :sessions
  
  get '/' do
    erb :index
  end

  get '/register' do
  	@name = params[:name]
  	erb :register
  end

  post '/register' do
  	@name = params[:name]
  	session[:player] = player
  	erb :game
  end

  get '/game' do
  	@name = params[:name]
  	session[:player] = player
  	erb :game
  end

  post '/game' do
  	@name = params[:name]
  	session[:player] = player
  	erb :outcome
  end

 	post '/outcome' do
  	session[:player] = player
  	@name = params[:name]
  	@computer = game.random
  	@player = player.selection(params[:game])
  	@outcome = game.outcome(@player, @computer)
		erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end