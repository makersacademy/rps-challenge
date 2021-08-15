require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # enabled sessions
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    # added name parameter to a session
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    # assigning param name to an instance variable
    @name = session[:name]
    erb :play
  end

  run! if app_file == $0
end
