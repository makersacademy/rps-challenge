require 'sinatra'
require './lib/game'

class RPS < Sinatra::Application

  enable :sessions
  set :session_secret, 'XPTO'

  get '/' do
    erb :name_form
  end

  post '/game-setup' do
    @player_name = params[:player_name]
    session[:player_name] = @player_name
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/weapons' do
    @player1 = params[:weapon]
    @game = Game.new(@player1, 'paper')
    session[:game] = @game
    session[:result] = @game.result
    redirect '/results'
  end

  get '/results' do
    @result = session[:result]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  
end
