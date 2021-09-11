require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name_entered' do
    session[:player_name] = params[:player_name]
    redirect '/pre'
  end

  get '/pre' do
    @player_name = session[:player_name]
    erb :pre
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  run! if app_file == $0
end
