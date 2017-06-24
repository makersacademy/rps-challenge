require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/welcome'
  end

  get '/welcome' do
    @name = session[:player_name]
    erb :welcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
