require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/play' do
    session[:player_name] = params[:player_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
