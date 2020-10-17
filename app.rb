require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:marketeer1] = params[:marketeer1]
    redirect '/play'
  end

  get '/play' do
    @marketeer1 = session[:marketeer1]
    erb :play
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @choice = session[:choice]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
