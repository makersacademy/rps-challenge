require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
  end

  run if app_file == $0
end