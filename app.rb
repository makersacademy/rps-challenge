require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:PlayerName])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/move' do
    @game = Game.instance
    @game.player.make_move(params[:move])
    @game.computer_move
    redirect '/game-over'
  end

  get '/game-over' do
    @game = Game.instance
    erb :game_over
  end
end
