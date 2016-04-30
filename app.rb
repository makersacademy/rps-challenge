require 'sinatra/base'
require './lib/player'
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
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    mode = params[:game_mode]
    if mode == 'standard'
    	@game = Game.create(player_1, player_2, true)
    else
    	@game = Game.create(player_1, player_2, false)
    end
    redirect '/play'
  end

  get '/names' do
  	@player_mode = params[:player_mode]
  	@game_mode = params[:game_mode]
  	erb :names
  end

  get '/play' do
  	erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
