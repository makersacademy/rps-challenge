require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @choice = session[:choice]
    erb(:play)
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/play'
  end

  run! if app_file == $0
end
