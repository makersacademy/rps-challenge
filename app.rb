require 'sinatra/base'

class RPS < Sinatra::Base
enable :sessions

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

  get '/selection' do
    @player = session[:player]
    erb :selection
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
