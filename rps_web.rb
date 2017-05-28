require 'sinatra/base'

class RPSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @shape = session[:shape]
    p @name, @shape
    erb :play
  end

  post '/play' do
    p params
    session[:shape] = params[:shape]
    redirect '/play'
  end

  run! if app_file == $0
end
