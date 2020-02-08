require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @shape = session[:shape]
    @opponent_shape = session[:opponent_shape]
    erb :play
  end

  post '/play' do
    session[:shape] = params[:shape]
    session[:opponent_shape] = :rock
    redirect '/play'
  end

  run! if app_file == $0
end
