require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'mind your business'

  get '/' do
    'RPS!'
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
