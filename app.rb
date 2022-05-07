require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/player_choice' do
    session[:player_choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @choice = session[:player_choice]
    @name = session[:name]
    erb :result
  end

  run! if app_file == $0
end
