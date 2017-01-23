require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions

  helpers do
    def stored_player_01
      Player.find(session[:player_01_id])
    end

    def add_player_01(player)
      id = player.object_id
      Player.add(id, player)
      session[:player_01_id] = id
    end

    def stored_player_02
      Player.find(session[:player_02_id])
    end

    def add_player_02(player)
      id = player.object_id
      Player.add(id, player)
      session[:player_02_id] = id
    end
  end

  get '/' do
    if stored_player_01 && stored_player_02
      redirect '/player_01_choose'
    else
      redirect '/register'
    end
  end

  get '/register' do
    erb :register
  end

  post '/players' do
    player_01 = Player.new(params[:player_01_name])
    player_02 = Player.new(params[:player_02_name])
    add_player_01(player_01)
    add_player_02(player_02)
    redirect '/'
  end

  get '/player_01_choose' do
    erb :player_01_choose
  end

  post '/player_02_choose' do
    if Game::WEAPONS.include?(params[:player_01_weapon].to_sym)
      stored_player_01.choose(params[:player_01_weapon].to_sym)
      erb :player_02_choose
    else
      erb :player_01_choose
    end
  end

  post '/result' do
    if Game::WEAPONS.include?(params[:player_02_weapon].to_sym)
      stored_player_02.choose(params[:player_02_weapon].to_sym)
      @game = Game.new(stored_player_01, stored_player_02)
      erb @game.result
    else
      erb :player_02_choose
    end
  end

  run! if app_file == $0
end
