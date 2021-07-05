require 'sinatra/base'
require_relative 'lib/computer'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :homepage, { :layout => :layout }
  end

  post '/form' do
    @game = Game.create
    @game.player.name = params["Player name"]
    redirect '/play'
  end

  get '/play' do
    erb :play, { :layout => :layout }
  end

  post '/play' do
    @game.player.turn = params["player_turn"]
    redirect '/result'
  end

  get '/result' do
    erb @game.result, { :layout => :layout }
  end

  run! if app_file == $0

end
