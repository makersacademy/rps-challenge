require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/name' do
    @name = params[:name]
    erb :index
  end

  get '/play' do
    erb :play
  end

  post '/player_move' do
    @move = params[:move].capitalize
    erb :player_move
  end

  run! if app_file == $0

end
