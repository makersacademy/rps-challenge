require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :session

  get '/' do
    erb :homepage
  end

  post '/play' do
    player1 = Player.new(params[:name1])
    $game = Game.new(player1)
    # @game = $game
    erb :play
  end

  post '/move' do
    @game = $game
    @p_move = $game.player1.choose_move(params[:p1move])
    @c_move = $game.pick_random
    erb :move
    # redirect '/outcome'
  end

  post '/outcome' do
    @game = $game
 
    erb :outcome
  end

  run! if app_file == $0
end
