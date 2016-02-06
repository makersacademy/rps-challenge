
require 'sinatra/base'
require './lib/pc_player'
require './lib/game'
require './lib/player'

# missing features:
# capitalize Spock
# best of 3
# multiplayer


class RPSApp < Sinatra::Base

  get '/' do
    $game = nil
    erb :index
  end

  get '/pvc' do
    erb :pvc
  end

  post '/pvc_name' do
    $game = Game.new(Player.new(params[:player_name]), PCPlayer.new)
    redirect to '/pvc'
  end

  post '/pvc_choice' do
    $game.player1.choice= params[:choice].downcase.to_sym
    redirect to '/pvc'
  end

  get '/pvc_pc_choice' do
    $game.player2.generate_choice
    $game.calculate_winner
    redirect to '/pvc'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
