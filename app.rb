require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    # "Welcome to Rock, Paper, Scissors!"
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  run! if app_file == $0
end
