require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :home
  end

  post '/names' do
    @player_1_name = params[:player1]
    erb :play
    #redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0

end
