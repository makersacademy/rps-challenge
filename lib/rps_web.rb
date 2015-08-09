require 'sinatra/base'
require_relative '../lib/game'
require_relative '../lib/player'

class Rps < Sinatra::Base
	enable :session
  get '/' do
    erb :index
  end

  get '/register' do 
  	erb :register
  end 

  post '/register' do 
  	session[:name] = params[:name]
  	@player = session[:name]

  	redirect '/register' if session[:name] == ""
  	redirect '/game'
  end 

  get '/game' do
    erb :game
  end

  # post '/game' do
  #   @parameters = params
  #   $game.player_1.place_ship(Ship.send(@parameters[:ship].to_sym), @parameters[:coordinate].to_sym, @parameters[:direction].to_sym)
  #   redirect '/gameplay' if $game.player_1.board.ships.count > 1

  #   erb :game
  # end



   set :views, Proc.new { File.join(root, "..", "views") }
  # start the server if ruby file executed directly
  run! if app_file == $0
end
