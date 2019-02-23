require 'sinatra/base'

class Rps < Sinatra::Base
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

  # start the server if ruby file executed directly
  run! if app_file == $0
end
