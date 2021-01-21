require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    p params
    @name = session[:name]
    @move = session[:move]
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
      redirect '/play'
  end

  run! if app_file == $0
end
