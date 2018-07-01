require 'sinatra/base'

class RPS < Sinatra::Base
  run! if app_file == $0
  enable :sessions

  get '/test' do
    'Welcome to Rock, Paper, Scissors!'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  get '/attack' do
    @player = session[:player]
    erb :attack
  end
end
