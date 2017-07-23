require 'sinatra/base'
require './lib/computer'
require './lib/game'
require './lib/player'

class RPSweb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    p params
    @name = params[:player_name]
    erb :play
  end

  post '/result' do
    erb :result
  end

  run! if app_file == $0

end
