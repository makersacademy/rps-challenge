require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end
  run! if app_file == $0

  post '/enter_name' do
    session[:marketeer_name] = params[:marketeer_name]
    erb :name_homepage
    redirect '/play'
  end

  get '/play' do
    @marketeer_name = session[:marketeer_name]
  end
end
