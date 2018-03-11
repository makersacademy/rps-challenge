require 'sinatra/base'
#require_relative './lib/RPS.rb'

class Game < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index # this erb file contains the html stuff
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/options' do
    erb :options
  end
  run! if app_file == $0
end
