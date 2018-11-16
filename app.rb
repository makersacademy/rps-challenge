require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/move' do
    @game = Game.instance
    @game.player.move = params[:move]
    p params
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @game.play
    erb(:result)
  end

end
