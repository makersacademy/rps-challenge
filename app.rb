require 'sinatra/base'

class RPSWeb < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'


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

  run! if app_file == $0
end
