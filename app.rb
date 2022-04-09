require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/choose' do
    session[:choice] = params[:choice]
    redirect to '/result'
  end

  get '/result' do
    @choice = session[:choice]
    erb :result
  end

  run! if app_file == $0

end
