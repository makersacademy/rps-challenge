require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
  erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name], params[:player_1_choice])
    player_2 = Player.new(params[:player_2_name], params[:player_2_choice])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_1_choice = $game.player_1.choice
    erb(:play)
  end

  get '/result' do
    $game.play
    @game = $game
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
