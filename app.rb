require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:Player_name] = params[:Player_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:Player_name]
    erb :play
  end

  run! if app_file == $0
end
