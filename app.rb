require 'sinatra/base'
require './lib/rps_game'

class Game < Sinatra::Base
  # enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @p1_name = (params[:p1_name])
    erb :play
  end
  
  get '/play' do
    erb :selection
  end

end
