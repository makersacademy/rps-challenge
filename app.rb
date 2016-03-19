require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/hand'

class Rps < Sinatra::Base

  get '/' do
    erb :signup
  end

  post '/names' do
  	player_1 = Player.new(params[:player_1])
  	player_2 = Player.new("The Computer")
  	Game.create(player_1, player_2)
  	redirect '/RPS'
  end

  get '/RPS' do
  	erb :rockpaperscissors
  end

  post '/fight' do
	my_weapon = params[:choice]
	Hand.hand(my_weapon, Game.instance.player_1)
 	Hand.instance.weapon
	redirect '/fight'
  end

  get '/fight' do
  	erb :fight
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
