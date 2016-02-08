require 'sinatra/base'
require 'rack'
require_relative '../lib/player'
require_relative '../lib/turn'

class RPS < Sinatra::Base
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
  end

  get '/' do
    erb :index
  end

  post '/name' do
    remember(Player.new(params[:player_name]))
    redirect '/play'
  end

  get '/play' do
    @player = session_player.name
    erb :play
  end

  post '/play' do
    session_player.new_turn(params[:weapon_choice])
    redirect '/the_choices'
  end

  get '/the_choices' do
    @player = session_player.name
    @p1_weapon = session_player.p1_weapon
    @p2_weapon = session_player.opponent_weapon
    @result = session_player.result
    erb :the_choices
  end

  run! if app_file == $0
end
