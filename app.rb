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
    session[:marketeer_name] = params[:marketeer_name]
    redirect '/play'
  end

  get '/play' do
    @marketeer_name = session[:marketeer_name]
    erb :play
  end

  post '/option' do
    session[:play_option] = params[:play_option]
    redirect '/option'
  end

  get '/option' do
    @play_option = session[:play_option]
    erb :option
  end

  run! if app_file == $0
end