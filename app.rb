require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Application

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:name]
    redirect to('/weapons')
  end

  get '/weapons' do
    erb :weapons
  end

  post '/multiplayer' do
    session[:player_1_weapon] = params[:weapon]
    erb :multiplayer_weapons
  end

  post '/play_computer' do
    session[:player_1_weapon] = params[:weapon]
    redirect to('/1p_game')
  end

  post '/play_opponent' do
    session[:player_2_name] = params[:name]
    session[:player_2_weapon] = params[:weapon]
    redirect to('/2p_game')
  end

  get '/1p_game' do
    @game = Game.new
    @opponent_weapon = @game.random_weapon
    @winner = @game.check(session[:player_1_weapon], @opponent_weapon)
    erb :game
  end

  get '/2p_game' do
    @game = Game.new
    @winner = @game.check(session[:player_1_weapon], session[:player_2_weapon])
    erb :multiplayer_game
  end

  run! if app_file == $0

end
