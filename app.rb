require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :start_menu
  end

  before do
    @game = Game.this_game
  end

  get '/game_start' do
    erb :names
  end

  post '/play' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.start(player_1, player_2)
    erb :play
  end

  post '/evaluate_round' do
    @p1_pick = @game.player_1_chooses(params[:player_1_pick])
    @p2_pick = @game.player_2_chooses
    @result = @game.evaluate_round
    erb :result
  end

  get '/new_round' do
    erb :play
  end

  run! if app_file == $0
end
