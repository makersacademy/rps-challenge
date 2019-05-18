require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/names' do
    session[:player] = params[:player]
    redirect '/game'
  end

  get '/game' do
    @player = session[:player]
    erb :game
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end
end
