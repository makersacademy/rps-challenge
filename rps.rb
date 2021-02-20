require 'sinatra/base'
# require 'player'
# require 'game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
      erb :index
  end

  post '/named-player' do
    session[:player_name] = params[:player_name]
    redirect to('/play')
  end

  get '/play' do 
    @player_name = session[:player_name]
    @move = session[:move]
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
    redirect to('/move1')
  end

  get '/move1' do
    @move = session[:move]
    erb :move1
  end



  run! if app_file == $0
end