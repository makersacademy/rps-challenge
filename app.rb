require 'sinatra'
require "sinatra/reloader" if development?


class Game < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :game
  end

  run! if app_file == $PROGRAM_NAME
end