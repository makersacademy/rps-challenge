require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions
  set :session_secret, "key"

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect "/play"
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

end
