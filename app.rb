require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/choose' do
    session[:option] = params[:option]
    redirect to '/result'
  end

  get '/result' do
    @choice = session[:option]
    erb :result
  end

  run! if app_file == $0

  
end