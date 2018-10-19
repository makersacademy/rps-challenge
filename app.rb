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
    @name = session[:name]
    erb :play
  end

  post '/choice' do
    @name = session[:name]
    @choice = params[:choice]
    erb :choice
  end

  run! if app_file == $0
end
