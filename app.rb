require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    #session[:player_1_name] = params[:player_1_name]
    #@player_1_name = session[:player_1_name]
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)
    erb :play
  end

  get '/play' do
    @game = Game.instance
  end

  get '/game_result' do
    @game = Game.instance
    @player_1_name = session[:player_1_name]
    erb :game_result
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
