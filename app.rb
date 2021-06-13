require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/move'
  end

  get '/move' do
    @move = session[:move]
    erb :move
  end

  run! if app_file == $0

end
