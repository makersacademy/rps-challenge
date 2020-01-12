require 'sinatra/base'
require_relative './lib/moves'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/shoot' do
    @move = Move.create(params[:action])
    redirect '/turn'
  end

  get '/turn' do
    @move = Move.instance
    erb :turn
  end

  run! if app_file == $0
end