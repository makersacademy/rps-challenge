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

  post '/options' do
    @game = Game.instance
    @game.player.option = params[:option]
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @game.outcome
    # @game.player.option = params[:option]
    erb(:result)
  end

end
