require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/rps'

class RpsChallenge < Sinatra::Base


	enable :sessions

	set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end

  get '/player1choose' do
    erb :p1choose
  end

  post '/player2choose' do
		session[:p1] = params[:weapon]
  	erb :p2choose
	end

	post '/gameoutcome' do
		session[:p2] = params[:weapon]

		game = Game.new
		player1 = Player.new
		player2 = Player.new
		game.add(player1)
		game.add(player2)
		rps_1 = Rps.new
		rps_2 = Rps.new
		player1.add(rps_1)
		player2.add(rps_2)
		

		player1.choose_scissors if session[:p1] == 'Scissors'
		player1.choose_paper if session[:p1] == 'Paper'
		player1.choose_rock if session[:p1] == 'Rock'

		player2.choose_scissors if session[:p2] == 'Scissors'
		player2.choose_paper if session[:p2] == 'Paper'
		player2.choose_rock if session[:p2] == 'Rock'

		@output = game.winner

		erb :game_winner
	end



  run! if app_file == $0
end
