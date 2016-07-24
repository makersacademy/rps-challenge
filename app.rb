require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    @user_move = params[:user_move]
    erb :start
  end

  post '/game' do
    # player = Player.new(params[:player_name])
    # user_move = params[:user_move]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
