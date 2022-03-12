require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base
    enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = Player.take_name(params[:player_1])
    erb(:play)
  end

  get '/game' do
    @player_1 = Player.name
    @p1_pick = params[:p1_pick]
    @machine_pick = Game.machine_pick
    erb(:game)
  end

end
