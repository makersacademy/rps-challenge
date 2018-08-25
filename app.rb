require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    $game = Game.new(@player_choice, @robot)
    @game = $game
    session[:random_robot] = @game.robot
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/game' do
    session[:player_choice] = params[:choice]
    redirect '/game'
  end

  get '/game' do
    @player = session[:player]
    @robot = session[:random_robot]
    @player_choice = session[:player_choice]
    @game = $game
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
