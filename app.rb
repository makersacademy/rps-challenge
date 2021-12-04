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
    @move = $game.choose_move(params[:p1move])
    # p @move
    erb :move
    # redirect '/outcome'
  end

  get '/outcome' do
    @game = $game
 
    erb :outcome
  end

  run! if app_file == $0
end
