require 'sinatra/base'
require_relative 'app_computer'
require_relative 'app_player'

class Game < Sinatra::Base
enable :sessions
  get '/' do 
    erb :index
  end 

  post '/play' do 
    session[:player_1] = params[:player_1]
    redirect '/choose'
  end 

  get '/choose' do 
    @player_1 = session[:player_1]
    erb :choose
  end 

  run! if app_file == $0
end