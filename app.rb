require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

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
    @game = true
    session[:move] = params[:move]
    @move = session[:move]
    p params
    erb :play
  end

  run! if app_file == $0
end
