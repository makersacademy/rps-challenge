require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @player = Game.instance.player
    erb :play
  end

  run! if app_file == $0
end
