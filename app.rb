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
  	players = params[:player_mode].to_i
  	standard_mode = params[:game_mode] == 'standard' ? true : false

  	if players == 1
  		player_1 = Player.new(params[:player_1_name])
  		player_2 = Computer.new
  	else
  		player_1 = Player.new(params[:player_1_name])
  		player_2 = Player.new(params[:player_2_name])
  	end
 	
   	@game = Game.create(player_1, player_2, players, standard_mode)

    redirect '/play'
  end

  post '/names' do
  	@player_mode	= params[:player_mode]
  	@game_mode		= params[:game_mode]
  	erb :names
  end

  get '/play' do
  	if @game.players == 1
  		@game.player_2.play(@game.game_mode)
  		@action = '/result'
  	else
  		@action = '/choice_p2'
  	end
  	@current_player = @game.player_1.name
  	erb :play	
  end

  post '/result' do
  	if @game.players == 1
  		@game.player_1.play(params[:choice].to_sym)
  	else
  		@game.player_2.play(params[:choice].to_sym)
  	end
  	erb :result
  end

  post '/choice_p2' do
  	@game.player_1.play(params[:choice].to_sym)
  	@action = '/result'
		@current_player = @game.player_2.name
		erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
