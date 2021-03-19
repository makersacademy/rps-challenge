require 'sinatra/base'
# require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  enable :session

  get '/' do
    erb(:index)
  end

  post('/name') do
    # $player = Player.new(params[:name])
    $game = Game.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = $game.player.name
    # session[:move] = params[:move]
    erb(:play)
  end

  post '/game' do
    @player = $game.player.name
    $game.move(params[:move])
    @move = params[:move]
    @computer_move = $game.computer_move
    erb(:game)
  end

end
