require 'sinatra/base'

class RPS < Sinatra::Base

enable :sessions

set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/names' do
    session[:Player] = params[:Player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:Player]
    erb :play
  end

  post '/weapons' do
    session[:weapons] = params[:Weapons]
    redirect '/finish'
  end

  get '/finish' do
    @weapon = session[:weapons]
    @player = session[:Player]
    erb :finish
  end



run! if app_file == $0
end
