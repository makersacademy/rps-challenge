require 'sinatra/base'
require 'sinatra/reloader'

class RPSWeb < Sinatra::Base 
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end 

  post '/move' do
    @player_name = session[:player_name]
    erb(:move)
  end
  
  run! if app_file == $0
end 
