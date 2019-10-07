require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Player.new("Computer")
    @game = Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/move' do
    @game = Game.instance
    @game.player1.move(params[:move])
    @game.player2.random_move
    erb(:move)
  end


  run! if app_file == $0
end
