require 'sinatra/base'


class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb :play
  end

  post  '/move' do
    $move = params[:move]
    p params
    redirect '/chosen_move'
  end

  get '/chosen_move' do
    p $move
    erb :move
  end


run! if app_file == $0
end
