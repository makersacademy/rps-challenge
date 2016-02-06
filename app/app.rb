require 'sinatra/base'
require 'rack'
require_relative '../lib/player'
require_relative '../lib/turn'

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

    # def player_name
    #   session_player.name
    # end

  end

  get '/' do
    erb :index
  end


  post '/name' do
    remember(Player.new(params[:player_name]))
    redirect '/play'
  end

  get '/play' do
    @player = session_player.name if session_player
    erb :play
  end


  post '/rock' do
    @weapon_choice = :rock
    session_player.new_turn(@weapon_choice)
    redirect '/the_result'
  end

  post '/scissors' do
    @weapon_choice = :scissors
    session_player.new_turn(@weapon_choice)
    redirect '/the_result'
  end

  post '/paper' do
    @weapon_choice = :paper
    session_player.new_turn(@weapon_choice)
    redirect '/the_result'
  end

  get '/the_result' do
    @player = session_player.name
    @weapon = session_player.weapon
    erb :the_result
  end



  run! if app_file == $0
end
