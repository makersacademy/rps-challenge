require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/named' do
    session[:charname] = params[:charname]
    redirect '/playing'
  end

  get '/playing' do
    erb :playing
  end

  post '/played' do
    session[:move] = params[:move]
  end

  run! if app_file == $0
end
