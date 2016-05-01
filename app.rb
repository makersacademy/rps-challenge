require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base

	enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/start' do
  	if params[:player_mode] == 'one'
  		player_1 = Player.new(params[:player_1_name])
  		player_2 = Computer.new
  		params[:game_mode] == 'standard' ? player_2.play(true) : player_2.play(false)
  	else
  		player_1 = Player.new(params[:player_1_name])
  		player_2 = Player.new(params[:player_2_name])
  	end

  	puts player_1, player_2

  	if params[:game_mode] == 'standard'
    	@game = Game.create(player_1, player_2, true)
    else
    	@game = Game.create(player_1, player_2, false)
    end
    redirect '/play'
  end

  post '/names' do
  	@player_mode	= params[:player_mode]
  	@game_mode		= params[:game_mode]
  	erb :names
  end

  get '/play' do
  	erb :play
  end

  post '/result' do
  	@game.player_1.play(params[:choice].to_sym)
  	puts "The player choice is #{@game.player_1.choice}"
  	puts "The cpu choice is #{@game.player_2.choice}"
  	erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
