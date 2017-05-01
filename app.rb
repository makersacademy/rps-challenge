require 'sinatra/base'

class Rockpaperscissors <  Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/playername' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post 'result' do
  end


end
