require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/game' do
    @player_1_name = session[:player_1_name]
    erb :game
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/game'
  end

  run! if app_file == $0
end
