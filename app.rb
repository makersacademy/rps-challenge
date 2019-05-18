require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:playername] = params[:playername]
    erb :play
  end

  get '/play' do
    @player_name = session[:playername]
    erb :play
  end
  
end
