require 'sinatra/base'
require_relative 'lib/rps_game'

class RockPaperScissors < Sinatra::Base

  $game = nil # stores the game object

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

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME

end
