require 'sinatra/base'

class RPS < Sinatra::Base 
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/home'
  end

  get '/home' do
    erb(:home)
  end

  post '/game' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do

  end

run! if app_file == $0
end