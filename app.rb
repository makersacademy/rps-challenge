require 'sinatra/base'
require 'shotgun'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @registered_player = Player.instance
  end

  get '/' do
    erb(:index)
  end

  post '/register' do
    @registered_player = Player.register(params[:name])
    redirect '/game'
  end

  get '/game' do
    erb(:game)
  end

  run! if app_file == $0

end
