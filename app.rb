require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player] = params[:player]
    redirect '/names'
  end

  get '/names' do
    @player = session[:player]
    erb :names
  end

  run! if app_file == $0
end
