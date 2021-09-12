require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base 
  enable :sessions

  configure :development do 
    register Sinatra::Reloader
  end
  
  get '/' do 
    erb(:index)
  end

  post '/name' do 
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do 
    cap_name = session[:player_1_name]
    @player_1_name = cap_name.capitalize
    erb(:play)
  end 

  get '/game' do
    cap_name = session[:player_1_name]
    @player_1_name = cap_name.capitalize
    erb(:game)
  end

  run! if app_file == $0

end