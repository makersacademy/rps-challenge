require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    erb :index
  end

  post '/name' do 
    @name = params[:player_name]
    session[:name] = params[:player_name]
    erb :name
  end

  post '/game' do 
    @name = session[:name]
    erb :game
  end

end
