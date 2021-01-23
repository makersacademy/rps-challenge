require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    'Yoooo lets get Rock, Paper, Scissors going!'
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/register'
  end

  get '/register' do
    @name = session[:name]
    @shape = session[:shape]
    erb(:register)
  end

  post '/play' do
    session[:shape] = params[:shape]
    redirect '/register'
  end

  run! if app_file == $0

end
