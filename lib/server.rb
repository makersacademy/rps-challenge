require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'player'
require_relative 'rspls'

class Rspls < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # enable :sessions

  get '/' do
    @title = "Start Game"
    erb :index
  end

  get '/start_game' do
    @title = "Player 1"
    player1 = Player.new params[:player_name]
    # session[:computer] = Player.new
    # player1_name = session[:player].name params[:name]
    # player2_name = session[:computer].name = "Computer"
    erb :start_game
  end

  post '/play' do
    player1 = Player.new params[:player_name]
    erb :play
  end

  not_found do
    erb :not_found
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
