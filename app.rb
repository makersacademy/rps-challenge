require 'sinatra/base'
require './lib/player'
require './lib/game'

class Fight < Sinatra::Base

  #enable :sessions

	get '/test' do 
		"Test infrastructure working!"
	end

  get '/' do
  	erb :index
  end

  post '/name' do
  	player = Player.new(params[:player_name])
  	$game = Game.new(player)
    redirect '/rules'
  end

  get '/rules' do
  	@game = $game
  	erb :rules
  end

  get '/arena' do
  	@game = $game
  	erb :arena
  end

  get '/result' do
  	@game = $game
  	p @game.weapon(params[:weapon_choice])
  	erb :result
  end

  run! if app_file == $0

end