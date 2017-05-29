require 'sinatra'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Application

  enable :sessions
  set :session_secret, 'XPTO'

  get '/' do
    erb :name_form
  end

  post '/game-setup' do
    session[:player1] = Player.new(params[:player_name])
    session[:player2] = Computer.new
    session[:game]    = Game.new(session[:player1], session[:player2])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapons' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1.weapon_choice(params[:weapon])
    @player2.random_weapon
    @game = session[:game]
    session[:result] = @game.result
    redirect '/results'
  end

  get '/results' do
    @game = session[:game]
    @player1 = session[:player1]
    @player2 = session[:player2]
    @result = session[:result]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  
end
