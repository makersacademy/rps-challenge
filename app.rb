require 'sinatra/base'
require_relative 'lib/computer'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :homepage
  end

  post '/form' do
    @game = Game.create
    @game.player.name = params["Player name"]
    redirect '/play'
  end

  get '/play' do
    @player_name = @game.player.name
    erb :play
  end

  post '/play' do
    @game.player.turn = params["player_turn"]
    redirect '/result'
  end

  get '/result' do
    @player_turn = @game.player.turn
    @player_name = @game.player.name
    erb @game.result
  end

  run! if app_file == $0

end
