require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/register' do
    session[:name] = params[:username]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  run! if app_file == $0
end
