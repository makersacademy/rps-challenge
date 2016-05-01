require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSLS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @player_1_choice = params[:choice]
    @player_2_choice = params[:choice]
    erb :play
  end

  post '/player_1_choice' do
    @game = $game
    p params
    @game.pick_choice(params[:choice])
    @game.switch_turns
    # @game.player_choice(player_2)
    redirect '/play'
  end

  post '/player_2_choice' do
    @game = $game
    p params
    @game.pick_choice(params[:choice])
    @game.switch_turns
    # @player_2_choice = params[:choice]
    # @game.switch_turns
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
