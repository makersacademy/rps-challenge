require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb:index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    p params
    redirect '/play'
  end

  get '/play' do

    @player_1_name = session[:player_1_name]
    erb:play
  end

  get '/move' do
    @player_1_name = session[:player_1_name]
    @player_move = params[:player_move]
    erb:move
  end

  run! if app_file == $0
end
