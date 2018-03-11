require 'sinatra'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    @player_name = params[:player_name]
    erb(:play)
  end

  post '/result' do
    @player_move = params[:player_move]
    erb(:result)
  end

  run! if app_file == $0
end
