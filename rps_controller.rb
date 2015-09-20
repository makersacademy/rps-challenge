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
    @player_name = $game.player_name
    @weapons = $game.weapons
    erb :play_rps
  end

  post '/play_rps' do
    $game.choose_player_weapon(params[:weapon])
    $game.choose_computer_weapon
    $game.play
    redirect '/results'
  end

  get '/results' do
    @player_name = $game.player_name
    @player_weapon = $game.player_weapon
    @computer_weapon = $game.computer_weapon
    @results = $game.results
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME

end
