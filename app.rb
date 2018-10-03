require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class ChoiceGame < Sinatra::Base

  enable :sessions
  set :session_secret, "I dont know"

  get '/' do
    erb :index
  end

  post '/solo' do
    player = Player.new(params[:solo_player])
    session[:game] = Game.new(player, Player.new('Computer'))
    redirect "/sologame"
  end

  get '/sologame' do
    @game = session[:game]
    erb :sologame
  end

  post '/multi' do
    player = Player.new(params[:player_one])
    player2 = Player.new(params[:player_two])
    session[:game] = Game.new(player, player2)
    redirect "/multiplayer"
  end

  get '/multiplayer' do
    @game = session[:game]
    erb :multiplayer
  end

  post '/selection' do
    @game = session[:game]
    choice = params[:choice]
    p2_choice = params[:p2_choice]
    @game.set_choice(0, choice)
    @game.set_choice(1, choice) if @game.retrieve_playername(1) == 'Computer'
    @game.set_choice(1, p2_choice) if @game.retrieve_playername(1) != 'Computer'
    redirect '/gameover'
  end

  get '/gameover' do
    @game = session[:game]
    @game.find_winner
    erb :winner
  end

  run! if app_file == $0
end
