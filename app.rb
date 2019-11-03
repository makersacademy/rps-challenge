require 'sinatra/base'
require './lib/player'

require 'sinatra'
require 'shotgun'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1])
    erb :play
  end

  run! if app_file == $0

end
