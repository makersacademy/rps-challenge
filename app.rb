require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  before do
  @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/start_game'
  end

  get '/start_game' do
    erb :start_game
  end

  get '/first_play' do
    erb :first_play
  end

  post '/first_selection' do
    @game.first_player.choice = params[:player_1_choice]
    redirect '/second_play'
  end

  get '/second_play' do
    erb :second_play
  end

  post '/second_selection' do
    @game.second_player.choice = params[:player_2_choice]
    redirect '/game_over'
  end

  get '/game_over' do
    erb :game_over
  end

  # @game.switch_turn
  # redirect '/play' if @game.game_over? == true
  # redirect '/game_over' if @game.game_over? == false

  run! if app_file == $0
end
