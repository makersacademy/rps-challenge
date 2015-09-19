require 'sinatra/base'
require_relative 'lib/rps_game'

class RockPaperScissors < Sinatra::Base

  # enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    $game = RpsGame.new(params[:player_name])
    redirect '/play_rps'
  end

  get '/play_rps' do
    @game = $game
    @name = $game.player_name
    erb :play_rps
  end

  post '/play_rps' do
    $game.choose_weapon(params[:weapon])
    redirect '/results'
  end

  get '/results' do
    @name = $game.player_name
    @player_weapon = $game.weapons_hash[$game.player_weapon]
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME

end
