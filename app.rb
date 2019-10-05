require_relative 'lib/player'
require_relative 'lib/game'
require 'sinatra/base'

class RpsApp < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  get '/single_player' do

  end

  get '/multiplayer' do

  end

  run! if app_file == $0
end
