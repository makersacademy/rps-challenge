require 'sinatra/base'
require './lib/player'
require './lib/game'


class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/game'
  end

  get '/game' do
    @player = $game.player.name
    erb :game
  end

  post '/challenge' do
    @weapon = params[:check]
    erb :challenge
  end

  # get '/challenge' do
  #   # @weapon = params[:check]
  #   erb :challenge
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
