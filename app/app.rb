require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
enable :sessions

 	get '/' do
  session[:game] = Game.new 
  erb(:index)
  end

	post '/names' do 
	session[:player_1] = params[:player_1]
	redirect('/start')
	end

	get '/start' do
	@player1 = session[:player_1] 
	erb(:start)
	end

	post '/weapon' do 
	session[:weapon] = params[:weapon]
	redirect('/play')
	end

	get '/play' do 
	@game = Game.new
	@weapon = session[:weapon]
	@opponent = @game.opponent
	erb(:play)
	end


 run! if app_file == $PROGRAM_NAME

end



