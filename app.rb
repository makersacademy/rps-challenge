require 'sinatra/base'
require './lib/player'
require './lib/rps_game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    $p1_name = RpsGame.new(params[:p1_name])
    @p1_name = $p1_name.name
    @player_input = $p1_name.choice(params[:player_input])
    @rps_selector = $p1_name.rps_selector
    @referee = $p1_name.referee
    @score = $p1_name.score
    erb :game
  end

 # post '/game' do
 #   @p1_name = $p1_name.name
 #   @player_input = $p1_name.choice(params[:player_input])

 #   @referee = $player1_name.referee
 #   redirect '/game'
 # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
