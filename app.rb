require 'sinatra/base'

class RPS < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    p session
    @name = session[:name]
    erb :play
  end

  post '/weapon' do
    p params
    session[:weapon] = params[:weapon]
    redirect '/action'
  end

  get '/action' do
    p session
    @weapon = session[:weapon]
    erb :action
  end

  run! if app_file == $0
end
