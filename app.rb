require 'sinatra'
require "sinatra/reloader" if development?

class RPS < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/register_name' do
    session[:player_name] = params[:player_name]
    redirect('/play')
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  # Start the server if this file is executed directly 
  # (do not change the line below)
  run! if app_file == $0
end