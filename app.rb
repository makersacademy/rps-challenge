require 'sinatra/base'

class Rps_app < Sinatra::Base

  enable :sessions

  get '/test' do
    "testing"
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/result' do
    session[:submit] = params[:submit]
  end

end
