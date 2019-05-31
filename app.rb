require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  get "/" do 
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params['player_name']
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @player_weapon = params[:player_weapon]
    erb(:play)
  end

  post '/position' do

    redirect '/result'
  end

  get '/result' do
  end





  run! if app_file == $0
end