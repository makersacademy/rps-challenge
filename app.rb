require 'sinatra/base'
require './lib/opponent'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  get '/' do
    erb :index
  end

  get '/names' do
    erb :play
  end

  post '/names' do
    $player_name = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
     @player_name = $player_name.name
    erb :play
  end

  post '/weapon_choice' do
    @player_name = $player_name.name
    $player_weapon = params[:player_weapon]
    $opponent_weapon = (Opponent.new).weapon
    redirect '/weapon'
  end

  get '/weapon' do
    @player_name = $player_name.name
    @player_weapon = $player_weapon
    $opponent_weapon = (Opponent.new).weapon
    erb :weapon
  end

 get '/result' do
    @player_name = $player_name.name
    @player_weapon = $player_weapon
    @opponent_weapon = $opponent_weapon
   erb :result
 end


   run! if app_file == $0
 end
