require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/arena'
  end

  get '/arena' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @shape = session[:shape]
    erb :arena
  end

  post '/arena' do
    session[:shape] = params[:shape]
    redirect '/arena'
  end

  run! if app_file == $0
end
