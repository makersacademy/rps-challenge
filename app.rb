require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  post '/play' do
    session[:hand] = params[:hand]
    @hand = session[:hand]
    erb :result
  end

  run! if app_file == $0
end
