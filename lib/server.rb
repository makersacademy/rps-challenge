require 'sinatra/base'
require '~/Projects/rps-challenge/lib/game.rb'
require '~/Projects/rps-challenge/lib/player.rb'
require '~/Projects/rps-challenge/lib/rps.rb'

class RpsChallenge < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", "views") }

	game = Game.new
	ed = Player.new
	diego = Player.new
	game.add(ed)
	game.add(diego)
	rps_Ed = Rps.new
	rps_Diego = Rps.new
	ed.add(rps_Ed)
	diego.add(rps_Diego)
	p1choice = 'dawg'
	p2choice = 'dawg'

  get '/' do
    erb :index
  end

  get '/player1choose' do
    erb :new_game
  end

  post '/player1choose' do
  		ed.choose_rock  if p1choice == 'Rock'	
  		ed.choose_scissors if p1choice == 'Scissors'
  		ed.choose_paper if p1choice == 'Paper'
  		redirect ('/player2choose')
  		erb :new_game
	end

	get '/player2choose' do
    erb :new_game2
  end
  



  run! if app_file == $0
end
