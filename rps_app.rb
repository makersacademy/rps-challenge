require 'sinatra/base'
require './lib/game'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/single_player' do
    erb :sign_in
  end

  get '/multiplayer' do
    erb :sign_in_multiplayer
  end

  post '/names' do
    player = Player.new(params[:player_name])
    session[:game] = Game.new(player)
    redirect '/play'
  end

  post '/multiplayer_names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    session[:game] = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb :play
  end

  get '/results' do
    @game = session[:game]
    @game.play(params[:choice])
    erb :results
  end

  run! if app_file == $0
end
