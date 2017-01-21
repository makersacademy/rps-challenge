require 'sinatra/base'
require './lib/opponent.rb'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions
  
  get '/' do
   	erb :index
  end

  post '/name' do
  	player_1 = Player.new(params[:player_name])
  	$game = Game.new(player_1)
  	redirect '/play'
  end


  get '/play' do
  	$game
  	#@player_name = session[:name]
  	erb :play
  end

  post '/game' do
  	session[:choice] = params[:choice]
  	redirect '/result'
  end

  get '/result' do
  	@player_name = session[:name]
  	@choice = session[:choice]
  	erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
