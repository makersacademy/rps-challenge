require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
enable :sessions

 	get '/' do
  erb(:index)
  end

  post '/game_type' do 
 	@game_type  = params[:game_type]
	if @game_type == "one_player" 
		redirect('/one_player') 
	else
		redirect('/two_player')
	end
	end

	get '/one_player' do 
	erb(:single_player)
	end	

	get '/two_player' do 
	erb(:multiplayer)
	end


	post '/names' do 
	session[:player_1] = params[:player_1]
	session[:player_2] = params[:player_2]
	redirect('/start')
	end

	get '/start' do
	@player1 = session[:player_1]
	erb(:start)
	end

	
	post '/weapon' do 
	session[:weapon] = params[:weapon]
	if !session[:player_2] 
	redirect('/play')
	else
	redirect('/second_choice')
	end
end

	get '/second_choice' do
	@player2 = session[:player_2]
	erb(:second_choice) 
	end

	post '/alt_weapon' do 
	session[:alt_weapon] = params[:alt_weapon]
	redirect('/multiplay')
	end

	get '/play' do 
	@player1 = session[:player_1]
	@player2 = "The Computer"
	player = Player.new(session[:weapon])
	@game = Game.new(player)
	@opponent = @game.opponent
	@game.result
	erb(:play)
	end

	get '/multiplay' do 
	@player1 = session[:player_1]
	@player2 = session[:player_2]
	player = Player.new(session[:weapon])
	player2 = Player.new(session[:alt_weapon])
	@game = Game.new(player, player2)
	@opponent = @game.opponent
	@game.result
	erb(:play)
	end



 run! if app_file == $PROGRAM_NAME

end



