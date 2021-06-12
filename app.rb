require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/move' do 
    session[:move] = params[:move]
    redirect '/move'  
  end

  get '/move' do
    @move = session[:move]
    erb :move
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end