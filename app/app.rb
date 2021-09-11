require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base

  set :session_secret, 'super secret'
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/register' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  get '/result' do

    erb :results
  end

  run! if app_file == $0

end
