require 'sinatra/base'
require 'tilt/erb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/game' do
    @player_one_name = session[:player_one_name]
    
    erb :game
  end

  post '/name' do
    session[:player_one_name] = params[:player_one_name]
    redirect '/game'
  end


  run! if app_file == $PROGRAM_NAME
end
