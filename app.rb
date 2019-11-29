require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:form)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:saved_name)
  end

  run! if app_file == $0
end
