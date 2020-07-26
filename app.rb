require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    @game.player_1.get_move(params[:move])
    erb :play
  end

  get '/move' do
    @game.player_1.get_move(params[:move])
    @game.random_move
    @who_wins = @game.move_comparison(@game.player_1.move, @game.computer_move)
    @game.player_1.gain_point if @who_wins == 'You Win'
    @game.gain_point
    @end = @game.end(@game.player_1, @game)
    erb :move
  end

  run! if app_file == $0
end
