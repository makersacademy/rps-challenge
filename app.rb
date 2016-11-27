require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name], params[:player_choice])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    @player_choice = $player.player_choice
    erb :play
  end

  get '/result' do
    $game = Game.new
    @computer_choice = $game.computer_choice
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
