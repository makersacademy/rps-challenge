require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'secret'

  get '/' do
    erb :index
  end

  post '/game' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  run! if app_file == $0
end
