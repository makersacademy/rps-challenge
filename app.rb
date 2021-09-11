require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect :play
  end

  get '/play' do
    erb :play
  end

  post '/turn' do
    session[:selected] = params[:selected]
    redirect :result
  end
  # using a checkbox form for input - will require a post request

  get '/result' do
    erb :result
  end
  
  run! if app_file == $0
end
