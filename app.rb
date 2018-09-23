require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, "something secret"

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @move = session[:move]
    @name = session[:name]
    erb(:play)
  end

  post '/move' do
    session[:move] = params.values[0]
    redirect '/play'
  end

  run! if app_file == $0
end
