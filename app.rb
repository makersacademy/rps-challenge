require './lib/game'
require './lib/player'
require 'sinatra/base'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(player: params[:player_name])
    redirect to '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/choose_rock' do
    @game = Game.instance
    @game.player.choose_rock
    redirect to '/move'
  end

  get '/move' do
    @game = Game.instance
    erb(:move)
  end

  run! if app_file == $0
end
