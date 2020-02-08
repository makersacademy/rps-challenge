require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  post '/players' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/arena'
  end

  get '/arena' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :arena
  end

  run! if app_file == $0
end
