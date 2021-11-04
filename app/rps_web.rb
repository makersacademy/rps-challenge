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

  helpers do
    #question: is there a way to combine the logic of player_1 and player_2 into
    #just 2 methods instead of 4?
    def player_1
      Player.find(session[:player_1_id])
    end

    def player_2
      Player.find(session[:player_2_id])
    end

    def add_player_1(player)
      id = player.object_id
      Player.add(id, player)
      session[:player_1_id] = id
    end

    def add_player_2(player)
      id = player.object_id
      Player.add(id, player)
      session[:player_2_id] = id
    end
  end

  get '/' do
    erb :game
  end
  
  #setting the game up and entering names, determining if 1 player or 2 player
  post '/setup' do
    player_1 = Player.new(params[:p1_name])
    add_player_1(player_1)
    #question: is this too much logic in here? where could this go?
    if params[:p2_name].length == 0
      player_2 = Computer.new('CPU')
      add_player_2(player_2)
      redirect '/player_weapon'
    else
      session[:p2_name] = params[:p2_name]
      player_2 = Player.new(params[:p2_name])
      add_player_2(player_2)
      redirect '/player_1_weapon'
    end
  end

  #entering weapon for one player game
  get '/player_weapon' do
    @p1_name = player_1.name
    @p2_name = player_2.name
    erb :player_weapon
  end

  post '/player_weapon' do
    player_1.select_weapon(params[:p1_weapon])
    redirect '/result'
  end

  #entering weapon for two player game
  get '/player_1_weapon' do
    @p1_name = player_1.name
    @p2_name = player_2.name
    erb :player_1_weapon
  end

  post '/player_1_weapon' do
    player_1.select_weapon(params[:p1_weapon])
    redirect '/player_2_weapon'
  end

  get '/player_2_weapon' do
    erb :player_2_weapon
  end

  post '/player_2_weapon' do
    player_2.select_weapon(params[:p2_weapon])
    redirect '/result'
  end
  
  #result for both games
  get '/result' do
    Controller.create(player_1, player_2)
    @p1_weapon = player_1.weapon
    @p2_weapon = player_2.weapon
    @p1_name = player_1.name
    @p2_name = player_2.name
    erb Controller.run_game
  end
  
  run! if app_file == $0
end