require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:username] = params[:username]
    redirect '/play'
  end

  get '/play' do
    @username = session[:username]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
