require 'sinatra'
require 'sinatra/reloader'


class Game < Sinatra::Base
  configure :development do
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/start'
  end

  get '/start' do
    @player_name = session[:player_name]
    erb :name
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  run! if app_file == $0
end
