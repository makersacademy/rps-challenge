require 'sinatra/base'
require './lib/player'
require './lib/rps_game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:p1_name] = params[:p1_name]
    redirect '/game'
  end

  get '/game' do
    @p1_name = session[:p1_name]
    # @p1_name.name # needs to appear in a class
    erb :game
  end

  post '/game' do
    @game = RpsGame.new
    @p1_name = session[:p1_name]
    @player_input = (params[:player_input])
    @choice = @game.choice(@player_input)
    @rps_selector = @game.rps_selector
    @referee = @game.referee
    @score = @game.score
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
