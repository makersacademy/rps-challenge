require 'sinatra/base'
require 'rack'
require_relative '../lib/player'

class RPS < Sinatra::Base
  enable :sessions
  use Rack::Session::Pool, :expire_after => 2592000
  set :sesion_secret, "super secret"

  helpers do

    def session_player
      Player.look_up(session[:player_id])
    end

    def remember(player)
      player_id = player.object_id
      Player.add(player_id, player)
      session[:player_id] = player_id
    end

    # def game_number
    #   Game.find(session[:game])
    # end
    #
    # def retrieve_game(game)
    #   game_id = game.object_id
    #   Game.add(session_player)
    #   session[:game] = game_id
    # end

  end

  get '/' do
    erb :index
  end


  post '/name' do
    # player = Player.new(params[:player_name])
    remember(Player.new(params[:player_name]))
    redirect '/play'
    #DO I NEED A GAME SESSION TO? OR JUST THE PLAYER ONE - OR PERHAPS JUST THE GAME ONE AND ROLL IN THE PLAYER
    # session[:game] = Game.new(session_player)
  end

  get '/play' do
    @player = session_player.name if session_player
    erb :play
  end

  run! if app_file == $0
end
