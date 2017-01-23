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
    player1 = Player.new(params[:player_name])
    player2 = Player.new("Computer")
    session[:game] = Game.new(player1, player2)
    redirect '/play'
  end

  post '/multiplayer_names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    session[:game] = Game.new(player1, player2)
    redirect '/2player'
  end

  get '/2player' do
    @game = session[:game]
    erb :multiplayer
  end

  post '/player_choice' do
    session[:player1_choice] = params[:choice]
    redirect '/2player'
  end

  get '/play' do
    @game = session[:game]
    erb :play
  end

  get '/multiplayer_results' do
    @game = session[:game]
    @game.play(session[:player1_choice], params[:choice])
    erb :results
  end

  get '/results' do
    @game = session[:game]
    p "Here before the game starts", @game.player2_choice
    @game.play(params[:choice])
    p "Here after the game ends", @game.player2_choice
    erb :results
  end

  run! if app_file == $0
end
