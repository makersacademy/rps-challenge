require 'sinatra/base'
require './lib/player'
require './lib/rps_game'

class App < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name], params[:RPSRadio])
    $player_2 = Player.new("AI Overlord", "Rock")
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    erb :play
  end

  post '/choose_object' do
    $player_1.weapon = params[:RPSRadio]
    redirect '/play_object'
  end

  get '/play_object' do
    @player_1_weapon = $player_1.weapon
    erb :play_weapon
  end

  post '/AI_turn' do
    @player_1_weapon = $player_1.weapon
    @player_1_name = $player_1.name
    @player_2_weapon = $player_2.ai_choose_weapon
    @player_2_name = $player_2.name
    erb :AI_turn
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
