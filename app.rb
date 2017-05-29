require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

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
    @throw = session[:throw]
    erb :play
  end

  post '/play' do
    session[:throw] = params[:throw]
    redirect '/play'
  end

  run if app_file == $0
end
