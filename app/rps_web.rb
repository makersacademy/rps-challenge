require 'sinatra/base'
require 'sinatra/reloader'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/computer'
require_relative '../lib/controller'

class RPSApp < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :game
  end
  
  #setting the game up and entering names, determining if 1 player or 2 player
  post '/setup' do
    session[:p1_name] = params[:p1_name]
    #unsure if this is too much logic for this file...
    if params[:p2_name].length == 0
      session[:p2_name] = 'CPU'
      redirect '/play_1_player'
    else
      session[:p2_name] = params[:p2_name]
      redirect '/play_2_player'
    end
  end

  #entering weapon for one player game
  get '/play_1_player' do
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    erb :player_weapon
  end

  post '/player_weapon' do
    session[:p1_weapon] = params[:p1_weapon]
    redirect '/result'
  end

  #entering weapon for two player game
  get '/play_2_player' do
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    erb :player_1_weapon
  end

  post '/player_1_weapon' do
    session[:p1_weapon] = params[:p1_weapon]
    redirect '/player_2'
  end

  get '/player_2' do
    erb :player_2_weapon
  end

  post '/player_2_weapon' do
    session[:p2_weapon] = params[:p2_weapon]
    redirect '/result'
  end
  
  #result for both games
  get '/result' do
    player_1 = Player.new(session[:p1_name])
    player_1.select_weapon(session[:p1_weapon])
    player_2 = Computer.new(session[:p2_name])
    player_2.select_weapon(session[:p2_weapon]) unless session[:p2_weapon].nil?
    Controller.create(player_1, player_2)
    @p1_weapon = player_1.weapon
    @p2_weapon = player_2.weapon
    @p1_name = player_1.name
    @p2_name = player_2.name
    erb Controller.run_game
  end
  
  run! if app_file == $0
end