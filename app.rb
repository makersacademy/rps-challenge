require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  set :port, 5200

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @player_choice = session[:player_choice]
    erb :play
  end

  post '/game' do
    session[:player_choice] = params[:player_choice]
    erb :game
  end

  run! if app_file == $0
end
