require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :entering_names
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  get '/first_player_option' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :first_player_option
  end

  run! if app_file == $0
end
