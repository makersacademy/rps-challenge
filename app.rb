require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/move'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    move = Move.new
    player_1 = Player.new(params[:player_1])
    @game = Game.create(player_1, move)
    redirect '/play'
  end

  get '/play' do
    @game
    erb :play
  end

  post '/move' do
    # @move = Move.new
    @game
    @game.move.player_move(params.values[0])
    @game.move.computer_move

    redirect '/game'
  end

  get '/game' do
    # @move
    @game
    erb :game
  end

  run! if app_file == $0
end
