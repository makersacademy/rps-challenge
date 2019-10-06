require 'sinatra/base'
require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1])
    erb(:play)
  end

  run! if app_file == $0 
end