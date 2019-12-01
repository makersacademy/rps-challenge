require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @shape = session[:shape]
    erb :play
  end

  post '/play' do
    session[:shape] = params[:shape]
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0

end