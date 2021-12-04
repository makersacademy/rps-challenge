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
    p session
    session[:marketeer_name] = params[:marketeer_name]
    redirect '/play'
  end

  get '/play' do
    @marketeer_name = session[:marketeer_name]
    @play_option = session[:play_option]
    erb :play
  end

  post '/play' do
    p session
    session[:play_option] = params[:play_option]
    redirect '/play'
  end
  run! if app_file == $0
end