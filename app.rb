require 'sinatra/base'
require 'Player'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :names
  end

  post '/names' do
    session[:Player_1] = params[:Player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:Player_1]
    erb :play
  end

  run! if app_file == $0
end